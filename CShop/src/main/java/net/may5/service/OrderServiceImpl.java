package net.may5.service;

import net.may5.dao.OrderMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper ordermapper;
	
	
	@Override
	public Object orderAlimi(String cstId) {
		// TODO Auto-generated method stub
		return ordermapper.orderAlimi(cstId);
	}

}
