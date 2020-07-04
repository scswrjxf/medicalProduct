package com.pojo;

import java.util.Date;

public class Comment {
	private Integer commentId;
	private String commentMessage;
	private User uId;
	private Goods goodsName;
	private Date commentDate;
	private Integer commentIspass;
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public String getCommentMessage() {
		return commentMessage;
	}
	public void setCommentMessage(String commentMessage) {
		this.commentMessage = commentMessage;
	}
	public User getuId() {
		return uId;
	}
	public void setuId(User uId) {
		this.uId = uId;
	}
	public Goods getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(Goods goodsName) {
		this.goodsName = goodsName;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public Integer getCommentIspass() {
		return commentIspass;
	}
	public void setCommentIspass(Integer commentIspass) {
		this.commentIspass = commentIspass;
	}
}
