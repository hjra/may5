package net.may5.service;

import java.util.List;

import net.may5.dto.Customer;


public interface CustomerService {

	public int getAllCustomerCount();	// 가입자 수
	public void insertJoinCst(Customer customer);			// 회원가입
	public List<Customer> selectAllCstInfo();	// 전체고객 정보 조회
	public Customer selectBlackCstInfo();		// 관심고객 정보 조회
	public Customer selectVIPCstInfo();			// VIP고객 정보 조회
}
