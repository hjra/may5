package net.may5.service;

import java.util.List;

import net.may5.dao.CustomerMapper;
import net.may5.dto.Customer;
import net.may5.dto.Zip;

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
	public List<Customer> selectBlackCstInfo() {
		return customerMapper.selectBlackCstInfo();
	}

	@Override
	public List<Customer> selectVIPCstInfo() {
		return customerMapper.selectVIPCstInfo();
	}

	@Override
	public List<Zip> firstSearchZip() {
		return customerMapper.firstSearchZip();
	}

	@Override
	public List<Zip> secondSearchZip() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Zip> thirdSearchZip() {
		// TODO Auto-generated method stub
		return null;
	}
}
