package net.may5.service;

import net.may5.dto.Customer;

public interface CustomerService {

	public int getAllCustomerCount();	// 가입자 수
	public void insertJoinCst(Customer customer);			// 회원가입
}
