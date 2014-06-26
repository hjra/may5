package net.may5.service;

import net.may5.dao.OrderMapper;
import net.may5.dto.Order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public Order getAlimi(String orderCode) {
		return orderMapper.getAlimi(orderCode);
	}
	


}
