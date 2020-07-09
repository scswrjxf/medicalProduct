package com.service; 
import java.util.List;

import com.pojo.Collect;

public interface CollectServiceXF { 
	int addNewCollect(String userId,Integer gid);

	Collect findCollectByUidAndCid(String userId,Integer gid);

	int delCollectByUidAndCid(String userId, Integer gid);

	List<Collect> findAllCollectById(String userId); 
}
