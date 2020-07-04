package com.service;

import java.util.List; 
import com.pojo.Orders;

public interface OrdersService {

	List<Orders> findAllOrders();

	int delOrder(Long oid);

}
