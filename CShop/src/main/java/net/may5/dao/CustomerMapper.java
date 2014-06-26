package net.may5.dao;

import net.may5.dto.Customer;

public interface CustomerMapper {

	Integer getAllCustomerCount();
	void insertJoinCst(Customer customer);
}
