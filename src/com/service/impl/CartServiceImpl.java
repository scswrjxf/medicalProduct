package com.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CartMapper;
import com.pojo.Cart;
import com.pojo.Goods;
import com.pojo.Orders;
import com.pojo.User;
import com.service.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService {
	@Resource
	private CartMapper cartMapper;
	/**
	 * 根据goodsName查找商品
	 */
	@Override
	public Cart findCartByGoodsName(String goodsName,String userAlice) {
		return cartMapper.findCartByGoodsName(goodsName,userAlice);
	}
	/**
	 * 根据goodsName更新cart数量
	 */
	@Override
	public int updateCartNumByGoodsName(Integer cid) {
		return cartMapper.updateCartNumByGoodsName(cid);
	}
	/**
	 * 增加购物车
	 */
	@Override
	public int addNewCart(String userAlice,String goodsName,Integer goodsId,Integer goodsPrice,String gPhoto) {
		return cartMapper.addNewCart(userAlice,goodsName,goodsId,goodsPrice,gPhoto);
	}
	/**
	 * 查找商品
	 */
	@Override
	public Goods findGoodsByGoodsId(Integer goodsId) {
		return cartMapper.findGoodsByGoodsId(goodsId);
	}
	/**
	 * 查找购物车所有商品
	 */
	@Override
	public List<Cart> findAllCart(String userAlice) {
		return cartMapper.findAllCart(userAlice);
	}
	@Override
	public int updateNumByGoodsName(Integer cid, Integer goodsNumber) {
		return cartMapper.updateNumByGoodsName(cid, goodsNumber);
	}
	@Override
	public int delCartByCid(Integer cid) {
		return cartMapper.delCartByCid(cid);
	}
	@Override
	public int delCart(String userAlice) {
		return cartMapper.delCart(userAlice);
	}
	@Override
	public List<Goods> findGoodsByGoodsName(String goodsName) {
		return cartMapper.findGoodsByGoodsName(goodsName);
	}
	@Override
	public int addNewOrder(String orderName, Integer total, String uid, String code, Date orderDate) {
		return cartMapper.addNewOrder(orderName, total, uid, code, orderDate);
	}
	@Override
	public List<Orders> findOrderByUserId(String userId) {
		return cartMapper.findOrderByUserId(userId);
	}
	@Override
	public int orderPass(Integer oid) {
		return cartMapper.orderPass(oid);
	}
	@Override
	public int updateUsersByUserId(User user) {
		return cartMapper.updateUsersByUserId(user);
	}
	@Override
	public int updateUserPhotoByuserId(String userId, String userPhoto) {
		return cartMapper.updateUserPhotoByuserId(userId, userPhoto);
	}
}
