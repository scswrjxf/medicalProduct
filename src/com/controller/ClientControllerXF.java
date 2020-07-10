package com.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.Cart;
import com.pojo.Category;
import com.pojo.Collect;
import com.pojo.Comment;
import com.pojo.Goods;
import com.pojo.User;
import com.service.CartService;
import com.service.CategoryService;
import com.service.CollectServiceXF;
import com.service.CommentsServiceXF;
import com.service.GoodsServiceXF;
import com.service.UserService;

@Controller
@RequestMapping("/clientXF")
public class ClientControllerXF {
	@Resource
	private CollectServiceXF collectServiceXF;
	@Resource
	private GoodsServiceXF goodsServiceXF;
	@Resource
	private CommentsServiceXF commentsServiceXF;
	@Resource
	private CategoryService categoryService;
	@Resource
	private UserService userService;
	@Resource
	private CartService cartService;
	// 收藏商品
	@RequestMapping(value = "/add_new_collect/{gid}", method = RequestMethod.GET)
	public ModelAndView addNewCollect(@PathVariable Integer gid, HttpSession session) {
		User loginer = (User) session.getAttribute("loginer");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/product_detail/{gid}");
		// 收藏商品，保存到数据库
		collectServiceXF.addNewCollect(loginer.getUserId(), gid);
		// 在 model中设置一个 coll 值
		mv.addObject("coll", new Collect());
		
		return mv;
	}

	// 取消收藏商品
	@RequestMapping(value = "/del_collect/{gid}", method = RequestMethod.GET)
	public ModelAndView delInvitationInter(@PathVariable Integer gid, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User loginer = (User) session.getAttribute("loginer");
		// 根据 gid 获取商品信息
		Goods good = goodsServiceXF.findGoodByGid(gid);
		mv.addObject("goodInfor", good);
		// 获取对应商品名称
		String goodsName = good.getGoodsName();
		// 根据 goodsName 获取所有通过审核的评论
		List<Comment> commentsList = commentsServiceXF.findAllCommentsByGoodsName(goodsName);
		mv.addObject("commentsList", commentsList);
		// 删除表 collect 中对应的记录
		collectServiceXF.delCollectByUidAndCid(loginer.getUserId(), gid);
		// 在 model中设置一个 coll 值
		mv.addObject("coll", null);
		mv.setViewName("client/product_detail");
		return mv;
	}

	// 对商品进行评论
	@RequestMapping(value = "/add_comment/{gid}", method = RequestMethod.POST)
	public String clientViewInvitation(@PathVariable Integer gid, Comment comment, HttpSession session, Model model) {
		User loginer = (User) session.getAttribute("loginer");
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		// 通过 gid 获取 Goods
		Goods goods = goodsServiceXF.findGoodByGid(gid);
		model.addAttribute("goodInfor", goods);
		// 获取对应商品名称
		String goodsName = goods.getGoodsName();
		// 根据 goodsName 获取所有通过审核的评论
		List<Comment> commentsList = commentsServiceXF.findAllCommentsByGoodsName(goodsName);
		model.addAttribute("commentsList", commentsList);
		// 查找商品是否收藏
		Collect coll = collectServiceXF.findCollectByUidAndCid(((User) loginer).getUserId(), gid);
		model.addAttribute("coll", coll);

		// 给 comment 设置数据
		comment.setuId(loginer);
		comment.setGoodsName(goods);
		comment.setCommentDate(new Date());
		// 保存到数据库
		commentsServiceXF.addNewComment(comment);
		model.addAttribute("error", "添加评论成功");
		return "client/product_detail";
	}

	// 我的收藏
	@RequestMapping(value = "/my_collect", method = RequestMethod.GET)
	public ModelAndView my_collect(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		// 获取所有分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		mv.setViewName("client/my_collect");
		User loginer = (User) session.getAttribute("loginer");
		// 获取所有的收藏信息
		List<Collect> collectlist = collectServiceXF.findAllCollectById(loginer.getUserId());
		mv.addObject("collectlist", collectlist);
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserId());
		mv.addObject("cartlist",cartlist);
		}
		return mv;
	}

	// 收藏页面取消收藏商品
	@RequestMapping(value = "/del_collect2/{gid}", method = RequestMethod.GET)
	public ModelAndView del_collect2(@PathVariable Integer gid, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User loginer = (User) session.getAttribute("loginer");
		// 删除表 collect 中对应的记录
		collectServiceXF.delCollectByUidAndCid(loginer.getUserId(), gid);
		// 在 model中设置一个 coll 值
		mv.addObject("coll", null);
		mv.setViewName("redirect:/clientXF/my_collect");
		return mv;
	}

	// 修改密码页面
	@RequestMapping("/alter_password")
	public String alter_password(Model model,HttpSession session) {
		// 获取所有分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		//获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserId());
		model.addAttribute("cartlist",cartlist);
		}
		return "client/alter_password";
		
	}

	// 根据 userId 修改密码
	@RequestMapping(value = "/alter_password", method = RequestMethod.POST)
	public ModelAndView alter_password(String oldPassword, String newPassword, String reNewPassword,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		// 判断新密码和确定新密码是否有内容
		if (StringUtils.isNullOrEmpty(newPassword) || StringUtils.isNullOrEmpty(reNewPassword)) {
			mv.addObject("information", "新密码和确定密码为空");
			mv.setViewName("redirect:/clientXF/alter_password");
			return mv;
		}
		// 验证两次输入密码是否相同
		if (!newPassword.equals(reNewPassword)) {
			mv.addObject("information", "两次密码输入不同");
			mv.setViewName("redirect:/clientXF/alter_password");
			return mv;
		} // 验证是否登录状态
		Object loginer = session.getAttribute("loginer");
		if (null == loginer) {
			mv.setViewName("redirect:/login");
			mv.addObject("error", "请先登录");
			return mv;
		}
		// 修改密码
		userService.updatePwdById(newPassword, ((User) loginer).getUserId());
		mv.addObject("error", "密码修改成功，去登录");
		session.removeAttribute("loginer");
		mv.setViewName("redirect:/login");
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
	// 我的评论
		@RequestMapping(value = "/my_comment", method = RequestMethod.GET)
		public ModelAndView my_comment(HttpSession session) {
			ModelAndView mv = new ModelAndView();
			// 获取所有分类
			List<Category> category = categoryService.findAllCategory();
			mv.addObject("category", category);
			mv.setViewName("client/my_comment");
			User loginer = (User) session.getAttribute("loginer");
			if(loginer!=null) {
			// 获取所有的购物车信息
			List<Cart> cartlist = cartService.findAllCart(loginer.getUserId());
			mv.addObject("cartlist",cartlist);
			}
			// 根据 userId 获取所有的评论信息
			List<Comment> commentlist = commentsServiceXF.findAllCommentById(loginer.getUserId());
			mv.addObject("commentlist", commentlist);
			return mv;
		}
		
		// 我的评论页面删除评论
		@RequestMapping(value = "/del_comment/{commentId}", method = RequestMethod.GET)
		public ModelAndView del_comment(@PathVariable Integer commentId, HttpSession session) {
			ModelAndView mv = new ModelAndView();
			User loginer = (User) session.getAttribute("loginer");
			// 根据 userId 和 commentId 删除表 comment 中对应的记录
			commentsServiceXF.delCommentByUidAndCommentId(loginer.getUserId(), commentId); 
			mv.addObject("error", "删除评论成功");
			mv.setViewName("redirect:/clientXF/my_comment");
			return mv;
		}
}
