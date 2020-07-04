package com.pojo;

import java.util.Date;

public class Orders {
	private Long oid;
	private String code;
	private Double Total;
	private Goods goodsName;
	private Date orderDate;
	private User uId;
	private Integer orderStatus;// 订单状态   
	public Long getOid() {
		return oid;
	}
	public void setOid(Long oid) {
		this.oid = oid;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Double getTotal() {
		return Total;
	}
	public void setTotal(Double total) {
		Total = total;
	}
	public Goods getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(Goods goodsName) {
		this.goodsName = goodsName;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public User getuId() {
		return uId;
	}
	public void setuId(User uId) {
		this.uId = uId;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
}
