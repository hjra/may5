package net.may5.service;

import java.util.List;

import net.may5.dto.Orders;

public interface OrderService {

	public List<Orders> getAlimiList();

	public List<Orders> getOrderList();

	public Object orderList(int orderDate);
	
	public List<Orders> getOrderListMng();
}

