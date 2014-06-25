package net.may5.service;

import net.may5.dao.CustomerMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public int getAllCustomerCount() {
		return customerMapper.getAllCustomerCount();
	}

}
