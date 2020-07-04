package com.dao;

import java.util.List; 
import com.pojo.Goods; 

public interface GoodsMapper {

	List<Goods> findAllGoods();

	List<Goods> findCategoryGoods(Integer categoryId);  
}
