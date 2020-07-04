package com.service.impl;

import java.util.List; 
import javax.annotation.Resource; 
import org.springframework.stereotype.Service; 
import com.dao.OrdersMapperXF;
import com.pojo.Orders;
import com.service.OrdersServiceXF; 

@Service("orderServiceXF")
public class OrdersServiceImplXF implements  OrdersServiceXF { 
	@Resource
	private OrdersMapperXF orderMapperXF; 
	// 获取所有订单
	@Override
	public List<Orders> findAllOrders() {
		return orderMapperXF.findAllOrders();
	}
	// 根据 oid 删除订单
	@Override
	public int delOrder(Long oid) {
		return orderMapperXF.delOrder(oid);
	}
}
