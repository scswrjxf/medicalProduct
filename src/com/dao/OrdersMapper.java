package com.dao;

import java.util.List; 
import com.pojo.Orders; 

public interface OrdersMapper { 
	List<Orders> findAllOrders();

	int delOrder(Long oid);
}
