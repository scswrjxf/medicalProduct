package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.Collect;

public interface CollectMapperXF {

	int addNewCollect(@Param("userId") String userId, @Param("gid") Integer gid);

	Collect findCollectByUidAndCid(@Param("userId") String userId,@Param("gid") Integer gid);

	int delCollectByUidAndCid(@Param("userId") String userId,@Param("gid") Integer gid);

}
