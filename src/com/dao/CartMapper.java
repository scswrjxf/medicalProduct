package com.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Cart;
import com.pojo.Goods;
import com.pojo.Orders;
import com.pojo.User;

public interface CartMapper {
	Cart findCartByGoodsName(@Param("goodsName") String goodsName,@Param("userAlice") String userAlice);
	
	int updateCartNumByGoodsName(Integer cid);
	
	int addNewCart(@Param("userAlice") String userAlice,@Param("goodsName") String goodsName,@Param("goodsId") Integer goodsId,@Param("goodsPrice") Integer goodsPrice,@Param("gPhoto") String gPhoto);
	
	Goods findGoodsByGoodsId(Integer goodsId); 
	
	List<Cart> findAllCart(String userAlice);
	
	int updateNumByGoodsName(@Param("cid") Integer cid,@Param("goodsNumber") Integer goodsNumber);

	int delCartByCid(Integer cid);
	
	int delCart(String userAlice);
	
	List<Goods> findGoodsByGoodsName(String goodsName);
	
	int addNewOrder(@Param("orderName") String orderName,@Param("total") Integer total,@Param("uid") String uid,@Param("code") String code,@Param("orderDate") Date orderDate);

	List<Orders> findOrderByUserId(String userId);
	
	int orderPass(Integer oid);
	
	int updateUsersByUserId(User user);
	
	int updateUserPhotoByuserId(@Param("userId") String userId,
			@Param("userPhoto") String userPhoto);
	
	User findUserByUserId(String userId);
	
	User findUserByUserAlice(@Param("userAlice") String userAlice);
}
