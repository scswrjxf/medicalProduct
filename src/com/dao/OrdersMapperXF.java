package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Orders;

public interface OrdersMapperXF {
	List<Orders> findAllOrders();

	int delOrder(Integer oid);

	Orders findOrderById(Integer oid);

	int updeteorderStatusById(@Param("oid") Integer oid,
			@Param("orderStatus") Integer orderStatus);
}
