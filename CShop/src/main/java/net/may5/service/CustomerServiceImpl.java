package net.may5.service;

import java.util.List;

import net.may5.dao.CustomerMapper;
import net.may5.dto.Customer;

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

	@Override
	public void insertJoinCst(Customer customer) {
		customerMapper.insertJoinCst(customer);
	}

	@Override
	public List<Customer> selectAllCstInfo() {
		return customerMapper.selectAllCstInfo();
	}
	
	@Override
	public Customer selectBlackCstInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer selectVIPCstInfo() {
		// TODO Auto-generated method stub
		return null;
	}
}
