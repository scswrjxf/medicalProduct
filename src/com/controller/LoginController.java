package com.controller; 
import javax.validation.Valid;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
import com.pojo.User;
import com.service.UserService; 

@Controller
public class LoginController{
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	// 访问 index 页面
	@RequestMapping("/index")
	public String index() {
		return "client/index";
	}
	// 跳转到 login 页面
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute User user) {
		return "client/login";
	}
	// 跳转到 regist 页面
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist(@ModelAttribute User user) { 
		user.setUserSex("男");
		return "client/regist";
	}
	// 登录校验
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Valid User user, BindingResult bindingResult, HttpSession session, Model model) {
		model.addAttribute("user", user);
		// 判断是否有校验错误 JSR303 校验
		if (bindingResult.hasErrors())
			return "client/login";
		// 根据账户密码查找账户
		User result = userService.findUserByIdAndPsw(user.getUserId(), user.getUserPsw());
		// 没有找到
		if (null == result) {
			model.addAttribute("error", "账户或密码错误");
			return "client/login";
		}  
		// 把账户放入 session 
		session.setAttribute("loginer", result);
		// 判断其权限
		if (result.getRole().equals(1))//1-系统管理员，0-一般用户
			return "manage/frame";
		return "redirect:/index";
	}
	// 实现注册功能
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String clientRegist(@Valid User user, BindingResult bindingResult, String reUserPsw, Model model) {
		if (bindingResult.hasErrors()) {
			return "client/regist";
		}
//		// 校验密码和确认密码是否相同
//		if (!user.getUserPsw().equals(reUserPsw)) {
//			model.addAttribute("error", "密码和确认密码不同");
//			return "client/regist";
//		}
		// 判断账户是否已经存在
		User result = userService.findUserById(user.getUserId());
		if (result != null) {
			model.addAttribute("error", "账户已经存在");
			return "client/regist";
		}  
		user.setUserCreateDate(new Date()); 
		System.out.println(DigestUtils.md5Hex("123456"));
		userService.addNewUser(user);
		System.out.println(userService.addNewUser(user));
		return "client/login";
	}
	// 实现登出功能
	@RequestMapping("/login_out")
	public String login_out(HttpSession session) {
		session.removeAttribute("loginer");
		return "redirect:/index";
	} 
	@RequestMapping(value = "/contact_us", method = RequestMethod.GET)
	public ModelAndView contact_us() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/contact_us");
		return mv;
	}

}
