package com.service.impl; 
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.GoodsMapper; 
import com.pojo.Goods;
import com.service.GoodsService; 
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Resource
	private GoodsMapper goodsMapper; 
	// 获取所有商品信息
	@Override
	public List<Goods> findAllGoods() { 
		return goodsMapper.findAllGoods();
	}
  
	@Override
	public List<Goods> findCategoryGoods(Integer categoryId) {
		return goodsMapper.findCategoryGoods(categoryId);
	}
}
