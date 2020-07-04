package com.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Category;
import com.service.CategoryService;
import com.service.GoodsService;

@Controller
public class CategoryController {
	@Resource
	private CategoryService categoryService;
	@Resource
	private GoodsService goodsService;
//	@RequestMapping(value="/index",method=RequestMethod.GET)
//	public ModelAndView gotoindex() {
//		ModelAndView mv=new ModelAndView("client/index");
//		List<Category> category = categoryService.findAllCategory();
//		mv.addObject("category",category);
//		return mv;
//	}
	@RequestMapping(value="/grid")
	public String gotoindex(Integer categoryId,Model model) {
		model.addAttribute("goods",goodsService.findCategoryGoods(categoryId));
		return "client/grid";
	}
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String allGoods(Model model) {
		model.addAttribute("goods",goodsService.findAllGoods());
		return "client/list";
	}
}
