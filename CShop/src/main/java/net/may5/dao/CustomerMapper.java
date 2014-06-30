package net.may5.dao;

import java.util.List;

import net.may5.dto.Customer;

public interface CustomerMapper {

	Integer getAllCustomerCount();
	void insertJoinCst(Customer customer);
	List<Customer> selectAllCstInfo();
	List<Customer> selectBlackCstInfo();
	List<Customer> selectVIPCstInfo();
}
