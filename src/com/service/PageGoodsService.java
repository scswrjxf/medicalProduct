package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.dao.GoodsDao;
import com.pojo.Category;
import com.pojo.Goods; 

public class PageGoodsService {
	private Integer numbers;	// 每个页面显示数量
	private Integer count;		// 页面总数
	private Integer currentPage;// 当前页面
	private GoodsDao goodsDao = new GoodsDao();
	/**
	 * @param numbers--每页显示个数
	 */
	public PageGoodsService(Integer numbers) {
		super();
		this.numbers = numbers;
	}
	public Integer getNumbers() {
		return numbers;
	}
	public Integer getCount() {
		this.count = goodsDao.goodsLength();
		return count;
	}
	/**
	 * 返回当前页的信息
	 * @param currentPage
	 * @return
	 */
	public ArrayList<Goods> pageGoods(Integer currentPage){
		this.currentPage = currentPage;
		return goodsDao.pageGoods(numbers, currentPage);
	}
	/**
	 * 返回的是分页内容
	 * @param currentPage
	 * @param countPage
	 * @param categoryId--分类id
	 * @return
	 */
	public String pagePageStr(HttpServletRequest request) {
		String str = "";
		str += "<li><a href='#' page='"+(currentPage-1)+"'>«</span></a></li>";
		str += "<li><a>"+currentPage+"</a></li>";
		str += "<li><a href='#' page='"+(currentPage+1)+"' aria-label='Next'><span aria-hidden='true'>»</span></a></li>";
		return str;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	/**
	 * 获取所有分类
	 * @return
	 */
	public ArrayList<Category> findAllCategory() { 
		return goodsDao.findAllCategory();
	} 
}












