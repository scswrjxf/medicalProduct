package com.pojo;

import java.util.Date;

public class Orders {
	private Integer oid;
	private String code;
	private Integer total;
	private String orderName;
	private Date orderDate;
	private User uId;
	private Integer orderStatus;// 订单状态  
	public Orders(Integer oid, String code, Integer total, String orderName, Date orderDate, User uId,
			Integer orderStatus) {
		super();
		this.oid = oid;
		this.code = code;
		this.total = total;
		this.orderName = orderName;
		this.orderDate = orderDate;
		this.uId = uId;
		this.orderStatus = orderStatus;
	}
	public Orders() {
		super();
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
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
