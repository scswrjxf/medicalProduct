package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.User;

public class ServerInterceptor implements HandlerInterceptor {
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		Object loginer = request.getSession().getAttribute("loginer");
		if(null == loginer) {
			response.sendRedirect("/medical_product/login");
			return false;
		}
		// 非系统管理员跳转到首页
		User user = (User)loginer;
		if(!user.getRole().equals(1)) {
			response.sendRedirect("/medical_product/");
			return false;
		}
		return true;
	}
}
