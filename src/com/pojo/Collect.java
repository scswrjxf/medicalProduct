package com.pojo;

import java.util.Date;

public class Collect {
	private Integer cid;
	private User collectUid;
	private Goods goodsId; 
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public User getCollectUid() {
		return collectUid;
	}
	public void setCollectUid(User collectUid) {
		this.collectUid = collectUid;
	}
	public Goods getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Goods goodsId) {
		this.goodsId = goodsId;
	} 
}
