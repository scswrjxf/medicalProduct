package com.service;

import java.util.List;

import com.pojo.Goods;

public interface GoodsServiceXF {

	List<Goods> findAllGoods(); 
	
	List<Goods> findGoodsByReMai();

	List<Goods> findGoodsByXinPin();

	List<Goods> findGoodsByTeHui();
}
