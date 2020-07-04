package com.dao;

import java.util.List; 
import com.pojo.Goods; 

public interface GoodsMapperXF {

	List<Goods> findAllGoods();

	List<Goods> findGoodsByReMai();

	List<Goods> findGoodsByXinPin();

	List<Goods> findGoodsByTeHui();  
}
