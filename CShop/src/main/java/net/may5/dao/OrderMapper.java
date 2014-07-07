package net.may5.dao;


import java.util.List;

import net.may5.dto.OptionPrice;
import net.may5.dto.Orders;

public interface OrderMapper {
	
	public List<Orders> getAlimiList();
	
	public List<Orders> getOrderList();

	public Orders orderList(int orderDate);
	
	public List<Orders> getOrderListMng();
}
