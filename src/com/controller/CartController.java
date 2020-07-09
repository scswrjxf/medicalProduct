package com.controller;


import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.Cart;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.User;
import com.service.CartService;
import com.service.CategoryService;
import com.service.GoodsServiceXF;
import com.service.UserService;

@Controller
@RequestMapping("/cserver")
public class CartController {
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	@Resource
	private GoodsServiceXF goodsServiceXF;
	@Resource
	private CategoryService categoryService;
	@Resource
	private UserService userService;
	//修改用户信息
	@RequestMapping(value="/alter_user",method=RequestMethod.POST)
	public ModelAndView alteruser(User user) {
		ModelAndView mv=new ModelAndView();
		if(StringUtils.isNullOrEmpty(user.getUserAlice()))
			user.setUserAlice(null);
		cartService.updateUsersByUserId(user);
		mv.setViewName("redirect:/cserver/viewuser");
		return mv;
	}
	//跳转到user_information页面
	@RequestMapping(value="/viewuser")
	public ModelAndView goodsmodify(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/user_information");
		//获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist",cartlist);
		}
		//查询用户信息
		User user=cartService.findUserByUserId(loginer.getUserId()); 
		mv.addObject("user",user);
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category",category);
		User newUser = cartService.findUserByUserId(user.getUserId());
		session.setAttribute("loginer",newUser);
		return mv;
	}
	// 处理图片上传功能
		@RequestMapping(value="/upload",method=RequestMethod.POST)
		@ResponseBody
		public Object upload(String userId,MultipartFile photo,HttpServletRequest request) {
			String fileName = null;
			Map<String,String> status = new HashMap<String, String>();
			//判断文件是否为空
			if(!photo.isEmpty()){
				String path = request.getSession().getServletContext()
						.getRealPath("statics"+File.separator+"file");//文件上传路径
				String oldFileName = photo.getOriginalFilename();//原文件名
				String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀 
				int filesize = 1048576;//1M
		        if(photo.getSize() >  filesize){//上传大小不得超过 1M
		        	status.put("status","文件不能超过1M");
		        	return JSON.toJSONString(status);
	            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
	            		|| prefix.equalsIgnoreCase("gif")){//上传图片格式不正确
	            	Random random = new Random();
	            	fileName = userId+new Date().getTime()+random.nextInt(10)+"."+prefix;
	                File targetFile = new File(path,fileName);
	                try {  
	                	photo.transferTo(targetFile);  //上传文件
	                } catch (Exception e) {  
	                    e.printStackTrace();
	                }
	            }else{
	            	status.put("status","图片格式不对");
	            	return JSON.toJSONString(status);
	            }
			}
			// 修改数据库中对应 userId 的 goodsPhoto
			cartService.updateUserPhotoByuserId(userId, fileName);
			status.put("status","success");
			status.put("filename", fileName);
			
			return JSON.toJSONString(status);
		}
		// 验证 userAlice 唯一性
		@RequestMapping("/ucexist")
		// 设置返回的内容为响应主体
		@ResponseBody
		public Object userAliceIsExit(String userAlice) {
			User result = cartService.findUserByUserAlice(userAlice);
			HashMap<String, String> resultMap = new HashMap<>();
			if(null == result)
				resultMap.put("userAlice", "noexist");
			else
				resultMap.put("userAlice", "exist");
			// 使用 fastjson 把 java 对象转换为 json 字符串
			return JSON.toJSONString(resultMap);
		}
	
}
