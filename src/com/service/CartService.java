package com.service;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Cart;
import com.pojo.Goods;
import com.pojo.Orders;
import com.pojo.User;

public interface CartService {
	Cart findCartByGoodsName(String goodsName,String userAlice);
	
	int updateCartNumByGoodsName(Integer cid);
	
	int addNewCart(String userAlice,String goodsName,Integer goodsId,Integer goodsPrice,String gPhoto);
	
	Goods findGoodsByGoodsId(Integer goodsId);
	
	List<Cart> findAllCart(String userAlice);
	
	int updateNumByGoodsName(Integer cid,Integer goodsNumber);
	
	int delCartByCid(Integer cid);
	
	int delCart(String userAlice);
	
	List<Goods> findGoodsByGoodsName(String goodsName);
	
	int addNewOrder(String orderName,Integer total,String uid,String code,Date orderDate);
	
	List<Orders> findOrderByUserId(String userId);
	
	int orderPass(Integer oid);
	
	int updateUsersByUserId(User user);
	
	int updateUserPhotoByuserId(String userId,String userPhoto);
	
	User findUserByUserId(String userId);
	
	User findUserByUserAlice(String userAlice);
}
