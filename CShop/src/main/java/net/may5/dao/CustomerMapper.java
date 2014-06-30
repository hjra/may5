package net.may5.dao;

import java.util.List;

import net.may5.dto.Customer;
import net.may5.dto.Zip;

public interface CustomerMapper {

	Integer getAllCustomerCount();			// 가입자 수
	void insertJoinCst(Customer customer);	// 회원가입
	List<Customer> selectAllCstInfo();		// 전체고객 정보 조회
	List<Customer> selectBlackCstInfo();	// 관심고객 정보 조회
	List<Customer> selectVIPCstInfo();		// VIP고객 정보 조회
	List<Zip> firstSearchZip();				// 1단계 주소 검색
	List<Zip> secondSearchZip();			// 2단계 주소 검색
	List<Zip> thirdSearchZip();				// 3단계 주소 검색
}
