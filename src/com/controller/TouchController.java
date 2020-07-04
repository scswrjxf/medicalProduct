package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojo.Touch;
import com.service.TouchService;

@Controller
public class TouchController {
	@Resource
	private TouchService touchService;
	@RequestMapping(value="/contact_us",method=RequestMethod.GET)
	public String touch(@ModelAttribute Touch touch) {
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
