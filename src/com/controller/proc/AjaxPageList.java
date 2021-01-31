package com.controller.proc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON; 
import com.mysql.jdbc.StringUtils;
import com.pojo.Goods;
import com.service.PageGoodsService;

@WebServlet("/user/ajax_page_list")
public class AjaxPageList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 参数表示每页个数(这里显示6个)
	private PageGoodsService pageGoodsService = new PageGoodsService(6);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Content-Type","application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 获取page参数(并判断是否为空或小于1)
		String page = request.getParameter("page");
		if(StringUtils.isNullOrEmpty(page) || Integer.valueOf(page)<1) {
			page = "1";
		}
		// 如果当前页比总页数大
		if(Integer.valueOf(page) > Math.ceil(pageGoodsService.getCount()*1.0/pageGoodsService.getNumbers())) {
			page = (int)Math.ceil(pageGoodsService.getCount()*1.0/pageGoodsService.getNumbers())+"";
		}
		// 根据当前页获取对应列表
		ArrayList<Goods> goods
			= pageGoodsService.pageGoods(Integer.valueOf(page));
		// 这里把得到的列表数据和当前页面的数放入数组，方便一起发送到前端
		Object[] data = {
				goods,page
		};
		// 生成JSON字符串
		String jsonStr = JSON.toJSONString(data);
		// 发送到请求者
		out.write(jsonStr);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}




























