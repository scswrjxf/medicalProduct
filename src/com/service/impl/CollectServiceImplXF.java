package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.dao.CollectMapperXF;
import com.dao.CommentsMapperXF;
import com.pojo.Collect;
import com.service.CollectServiceXF;
@Service("collectServiceImplXF")
public class CollectServiceImplXF implements CollectServiceXF {
	@Resource
	private CollectMapperXF collectMapperXF;
	// 收藏商品
	@Override
	public int addNewCollect(String userId, Integer gid) {
		return collectMapperXF.addNewCollect(userId,gid);
	}

	// 查找商品是否收藏
	@Override
	public Collect findCollectByUidAndCid(String userId, Integer gid) {
		return collectMapperXF.findCollectByUidAndCid(userId,gid);
	}
	// 取消收藏
	@Override
	public int delCollectByUidAndCid(String userId, Integer gid) {
		return collectMapperXF.delCollectByUidAndCid(userId,gid);
	}

}
