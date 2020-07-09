package com.pojo;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class Goods {
	private Integer gid;
	private String goodsName;
	private String goodsPhoto;
	private Integer goodsPrice;
	private String goodsDesc;
	@JSONField(format="yyyy-MM-dd")
	private Date inputDate;
	private Integer goodsNumber;
	private Category categoryId;
	public Goods() {
		super();
	}
	public Goods(Integer gid, String goodsName, String goodsPhoto, Integer goodsPrice, String goodsDesc, Date inputDate,
			Integer goodsNumber, Category categoryId) {
		super();
		this.gid = gid;
		this.goodsName = goodsName;
		this.goodsPhoto = goodsPhoto;
		this.goodsPrice = goodsPrice;
		this.goodsDesc = goodsDesc;
		this.inputDate = inputDate;
		this.goodsNumber = goodsNumber;
		this.categoryId = categoryId;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsPhoto() {
		return goodsPhoto;
	}
	public void setGoodsPhoto(String goodsPhoto) {
		this.goodsPhoto = goodsPhoto;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	public Integer getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(Integer goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public Category getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}
}
