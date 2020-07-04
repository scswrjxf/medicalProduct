package com.dao;

import java.util.List; 
import com.pojo.Orders; 

public interface OrdersMapperXF { 
	List<Orders> findAllOrders();

	int delOrder(Long oid);
}
