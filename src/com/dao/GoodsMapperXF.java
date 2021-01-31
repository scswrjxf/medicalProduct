package com.dao;

import java.util.ArrayList;
import java.util.List; 
import com.pojo.Goods; 

public interface GoodsMapperXF {

	List<Goods> findAllGoods();

	List<Goods> findGoodsByReMai();

	List<Goods> findGoodsByXinPin();

	List<Goods> findGoodsByTeHui();

	Goods findGoodByGid(Integer gid);

	/************/
	int getCount();

	ArrayList<Goods> pageGoods(Integer numbers, Integer currentPage);  
}
