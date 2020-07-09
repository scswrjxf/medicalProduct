package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojo.Cart;
import com.pojo.Category;
import com.pojo.User;
import com.service.CartService;
import com.service.CategoryService;
import com.service.GoodsService;

@Controller
public class CategoryController {
	@Resource
	private CategoryService categoryService;
	@Resource
	private GoodsService goodsService;
	@Resource
	private CartService cartService;
//	@RequestMapping(value="/index",method=RequestMethod.GET)
//	public ModelAndView gotoindex() {
//		ModelAndView mv=new ModelAndView("client/index");
//		List<Category> category = categoryService.findAllCategory();
//		mv.addObject("category",category);
//		return mv;
//	}
	@RequestMapping(value="/grid")
	public String gotoindex(Integer categoryId,Model model,HttpSession session) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category",category);
		//获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		model.addAttribute("cartlist",cartlist);
		}
		model.addAttribute("goods",goodsService.findCategoryGoods(categoryId));
		return "client/grid";
	}
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String allGoods(Model model,HttpSession session) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category",category);
		//获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		model.addAttribute("cartlist",cartlist);
		}
		model.addAttribute("goods",goodsService.findAllGoods());
		return "client/list";
	}
}
