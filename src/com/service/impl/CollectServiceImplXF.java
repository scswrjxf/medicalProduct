package com.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.dao.CollectMapperXF;
import com.pojo.Collect;
import com.service.CollectServiceXF;

@Service("collectServiceImplXF")
public class CollectServiceImplXF implements CollectServiceXF {
	@Resource
	private CollectMapperXF collectMapperXF;

	// 收藏商品
	@Override
	public int addNewCollect(String userId, Integer gid) {
		return collectMapperXF.addNewCollect(userId, gid);
	}

	// 查找商品是否收藏
	@Override
	public Collect findCollectByUidAndCid(String userId, Integer gid) {
		return collectMapperXF.findCollectByUidAndCid(userId, gid);
	}

	// 取消收藏
	@Override
	public int delCollectByUidAndCid(String userId, Integer gid) {
		return collectMapperXF.delCollectByUidAndCid(userId, gid);
	}

	// 根据 userId 获取所有收藏
	@Override
	public List<Collect> findAllCollectById(String userId) {
		return collectMapperXF.findAllCollectById(userId);
	}

}
