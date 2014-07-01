package net.may5.service;

import java.util.List;

import net.may5.dao.OrderMapper;
import net.may5.dto.Orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	public List<Orders> getAlimiList() {
		return orderMapper.getAlimiList();
	}

}

