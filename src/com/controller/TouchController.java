package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Cart;
import com.pojo.Category;
import com.pojo.Touch;
import com.pojo.User;
import com.service.CartService;
import com.service.CategoryService;
import com.service.TouchService;

@Controller
public class TouchController {
	@Resource
	private TouchService touchService;
	@Resource
	private CartService cartService;
	@Resource
	private CategoryService categoryService;
	@RequestMapping(value="/contact_us",method=RequestMethod.GET)
	public String touch(@ModelAttribute Touch touch,HttpSession session,ModelAndView mv,Model model ) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category",category);
		User loginer = (User)session.getAttribute("loginer");
		if(loginer!=null) {
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist",cartlist);
		}
		return "client/contact_us";
	}
	//联系我们信息校验
	@RequestMapping(value="/contact_us",method=RequestMethod.POST)
	public String touch(@Valid Touch touch,BindingResult bindingResult,HttpSession session,Model model) {
		model.addAttribute("touch",touch);
		// 判断是否有校验错误
		if(bindingResult.hasErrors()) {
			return "client/contact_us";
		}
		touchService.addTouch(touch);
		return "redirect:/contact_us";
	}
}
