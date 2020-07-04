package com.service.impl;

import java.util.List; 
import javax.annotation.Resource; 
import org.springframework.stereotype.Service; 
import com.dao.OrdersMapper;
import com.pojo.Orders;
import com.service.OrdersService; 

@Service("orderService")
public class OrdersServiceImpl implements  OrdersService { 
	@Resource
	private OrdersMapper orderMapper; 
	// 获取所有订单
	@Override
	public List<Orders> findAllOrders() {
		return orderMapper.findAllOrders();
	}
	// 根据 oid 删除订单
	@Override
	public int delOrder(Long oid) {
		return orderMapper.delOrder(oid);
	}
}
