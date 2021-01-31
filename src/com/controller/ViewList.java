package com.controller;

import java.io.IOException;
import java.util.ArrayList; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import com.mysql.jdbc.StringUtils;
import com.pojo.Category;
import com.pojo.Goods; 
import com.service.PageGoodsService;

@WebServlet("/user/list")
public class ViewList extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	// 创建分页服务对象(每页6个)
	private PageGoodsService pageGoodsService = new PageGoodsService(6);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 获取前端传递过来的当前页
		String page = request.getParameter("page");
		if(StringUtils.isNullOrEmpty(page) || Integer.valueOf(page) < 1) {
			page = "1";
		}
		// 判断当前页是不是比最后那页大
		if(Integer.valueOf(page) > Math.ceil(pageGoodsService.getCount()*1.0/pageGoodsService.getNumbers())) {
			page = (int)Math.ceil(pageGoodsService.getCount()*1.0/pageGoodsService.getNumbers())+"";
		}
		// 获取所有 分类
		ArrayList<Category> category = pageGoodsService.findAllCategory();
		request.setAttribute("category", category);
		// 获取当前页面的数据
		ArrayList<Goods> goods = pageGoodsService.pageGoods(Integer.valueOf(page));
		// 放入request中
		request.setAttribute("goods", goods);
		// 获取当前页的导航字符串内容
		String pageStr = pageGoodsService.pagePageStr(request);
		// 把导航字符串放入request
		request.setAttribute("pageStr", pageStr);
		
		// 页面跳转
		request.getRequestDispatcher("/WEB-INF/jsp/client/list.jsp").
		forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
