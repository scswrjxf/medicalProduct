package com.service; 
import com.pojo.Collect;

public interface CollectServiceXF { 
	int addNewCollect(String userId,Integer gid);

	Collect findCollectByUidAndCid(String userId,Integer gid);

	int delCollectByUidAndCid(String userId, Integer gid); 
}
