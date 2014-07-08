package net.may5.service;

import java.util.List;

import net.may5.dao.OrderMapper;
import net.may5.dto.Customer;
import net.may5.dto.Orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	public List<Orders> getAlimiList() {
		return orderMapper.getAlimiList();
	}
	
	public List<Orders> getOrderList() {
		return orderMapper.getOrderList();
	}
	
	@Transactional
	public Orders orderList(int orderDate) {
		Orders orders = orderMapper.orderList(orderDate);
		return orders;
	}

	@Override
	public List<Orders> getOrderListMng() {
		
		return orderMapper.getOrderListMng();
	}

	@Override
	public Customer getCstExistingInfo(String cstId) {
		
		return orderMapper.getCstExistingInfo(cstId);
	}

	

}


