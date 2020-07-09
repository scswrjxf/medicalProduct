package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.Comment;
import com.pojo.Goods;
import com.pojo.Orders;
import com.pojo.User;
import com.service.CommentsServiceXF;
import com.service.GoodsServiceXF;
import com.service.OrdersServiceXF;
import com.service.ServerService;
import com.service.UserService;

@Controller
@RequestMapping("/serverXF")
public class ServerControllerXF {
	@Resource
	private ServerService serverService;
	@Resource
	private OrdersServiceXF ordersServiceXF;
	@Resource
	private UserService userService;
	@Resource
	private GoodsServiceXF goodsServiceXF;
	@Resource
	private CommentsServiceXF commentsServiceXF;

	// 跳转到 orderlist 页面
	@RequestMapping("/orderlist")
	public ModelAndView gotoOrderlist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/orderlist");
		// 获取所有的用户信息
		List<User> users = userService.findAllUsers();
		mv.addObject("userList", users);
		// 获取所有的商品信息
		List<Goods> goods = goodsServiceXF.findAllGoods();
		mv.addObject("goodsList", goods);
		// 获取所有的用户信息
		List<Orders> orderList = ordersServiceXF.findAllOrders();
		mv.addObject("orderList", orderList);
		return mv;
	}

	// 根据 oid 删除订单
	@RequestMapping("/delorder/{oid}")
	public String delorders(@PathVariable Integer oid) {
		ordersServiceXF.delOrder(oid);
		// 使用了重定向
		return "redirect:/serverXF/orderlist";
	}

	// 跳转到 commentsview.jsp
	@RequestMapping("/orderview/{oid}")
	public ModelAndView orderview(@PathVariable Integer oid) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/orderview");
		// 获取所有的用户信息
		List<User> users = userService.findAllUsers();
		mv.addObject("userList", users); 
		// 根据 oid 获取订单信息
		Orders order = ordersServiceXF.findOrderById(oid);
		mv.addObject("orderInfor", order);
		return mv;
	}

	// 跳转到 orderverify页面（REST）
	@RequestMapping("/orderverify/{oid}")
	public ModelAndView orderverify(@PathVariable Integer oid) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/orderverify");
		// 获取所有的用户信息
		List<User> users = userService.findAllUsers();
		mv.addObject("userList", users); 
		// 根据 oid 获取订单信息
		Orders order = ordersServiceXF.findOrderById(oid);
		mv.addObject("orderInfor", order);

		return mv;
	}

	// 修改订单状态
	@RequestMapping(value = "/orderStatus", method = RequestMethod.GET)
	public String orderStatus(Integer oid, Integer orderStatus) {
		// 根据 oid 修改 orderStatus
		ordersServiceXF.updeteorderStatusById(oid, orderStatus);
		return "redirect:/serverXF/orderlist";
	}

	// 跳转到 pwdmodify.jsp ( 管理员密码修改页面 )
	@RequestMapping("/pwdmodify")
	public String pwdmodify() {
		return "manage/pwdmodify";
	}

	// 根据 userId 修改其密码
	@RequestMapping(value = "/pwdmodify", method = RequestMethod.POST)
	public ModelAndView pwdModify(String oldPassword, String newPassword, String reNewPassword, HttpSession session) {
		// 判断新密码和确定新密码是否有内容
		ModelAndView mv = new ModelAndView();
		if (StringUtils.isNullOrEmpty(newPassword) || StringUtils.isNullOrEmpty(reNewPassword)) {
			mv.addObject("information", "新密码和确定密码为空");
			mv.setViewName("manage/pwdmodify");
			return mv;
		}
		// 验证两次输入密码是否相同
		if (!newPassword.equals(reNewPassword)) {
			mv.addObject("information", "两次密码输入不同");
			mv.setViewName("manage/pwdmodify");
			return mv;
		} // 验证是否登录状态
		Object loginer = session.getAttribute("loginer");
		if (null == loginer) {
			mv.setViewName("client/login");
			mv.addObject("error", "请先登录");
			return mv;
		}
		// 修改密码
		userService.updatePwdById(newPassword, ((User) loginer).getUserId());
		mv.addObject("information", "密码修改成功");
		mv.setViewName("manage/pwdmodify");
		return mv;
	}

	// 验证旧密码是否正确
	@RequestMapping("/pwdconform")
	@ResponseBody
	public Object pwdConform(String oldPassword, HttpSession session) {
		Object loginer = session.getAttribute("loginer");
		Map<String, String> map = new HashMap<>();
		if (null == loginer) {
			map.put("infor", "旧密码不能为空");
		} else {
			// 对获取的旧密码进行加密并判断是否相同
			if (DigestUtils.md5Hex(oldPassword).equals(((User) loginer).getUserPsw()))
				map.put("infor", "success");
			else
				map.put("infor", "与旧密码不同");
		}
		return JSON.toJSONString(map);
	}

	// 跳转到 commentlist 页面
	@RequestMapping("/commentlist")
	public ModelAndView gotoCommentlist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/commentlist");
		// 获取所有的用户信息
		List<User> users = userService.findAllUsers();
		mv.addObject("userList", users);
		// 获取所有的商品信息
		List<Goods> goods = goodsServiceXF.findAllGoods();
		mv.addObject("goodsList", goods);
		// 获取所有的评论
		List<Comment> commentList = commentsServiceXF.findAllComments();
		mv.addObject("commentList", commentList);
		return mv;
	}

	// 跳转到 commentsview.jsp
	@RequestMapping("/commentview/{commentId}")
	public ModelAndView commentsview(@PathVariable Integer commentId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/commentview");
		// 根据 commentId 获取评论信息
		Comment comment = commentsServiceXF.findCommentById(commentId);
		mv.addObject("commentInfor", comment);
		return mv;
	}

	// 跳转到 commentverify页面（REST）
	@RequestMapping("/commentverify/{commentId}")
	public ModelAndView commentverify(@PathVariable Integer commentId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/commentverify");
		// 根据 commentId 获取评论信息
		Comment comment = commentsServiceXF.findCommentById(commentId);
		mv.addObject("commentInfor", comment);

		return mv;
	}

	// 评论审核
	@RequestMapping(value = "/commentpass", method = RequestMethod.GET)
	public String commentpass(Integer commentId, Integer commentIspass) {
		// 根据 commentId 修改 commentIspass
		commentsServiceXF.commentIspassById(commentId, commentIspass);
		return "redirect:/serverXF/commentlist";
	}
}
