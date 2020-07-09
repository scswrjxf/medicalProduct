package com.pojo;

public class Cart {
	private Integer cid;
	private Integer goodsId;
	private String goodsName;
	private Integer goodsPrice;
	private Integer goodsNumber;
	private String gPhoto;
	private Integer isEnable;
	private User userAlice;
	public Cart(Integer cid, Integer goodsId, String goodsName, Integer goodsPrice, Integer goodsNumber, String gPhoto,
			Integer isEnable, User userAlice) {
		super();
		this.cid = cid;
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsNumber = goodsNumber;
		this.gPhoto = gPhoto;
		this.isEnable = isEnable;
		this.userAlice = userAlice;
	}
	public Cart() {
		super();
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public Integer getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(Integer goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public String getgPhoto() {
		return gPhoto;
	}
	public void setgPhoto(String gPhoto) {
		this.gPhoto = gPhoto;
	}
	public Integer getIsEnable() {
		return isEnable;
	}
	public void setIsEnable(Integer isEnable) {
		this.isEnable = isEnable;
	}
	public User getUserAlice() {
		return userAlice;
	}
	public void setUserAlice(User userAlice) {
		this.userAlice = userAlice;
	}
	
}
