package com.service;

import java.util.List; 
import com.pojo.Orders;

public interface OrdersServiceXF {

	List<Orders> findAllOrders();

	int delOrder(Integer oid);

	Orders findOrderById(Integer oid);

	int updeteorderStatusById(Integer oid, Integer orderStatus);

}
