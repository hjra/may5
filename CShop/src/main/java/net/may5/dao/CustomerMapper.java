package net.may5.dao;

import java.util.List;

import net.may5.dto.Customer;
import net.may5.dto.Zip;

import org.apache.ibatis.annotations.Param;

public interface CustomerMapper {

	/** 고객페이지 */
	
	Integer getAllCustomerCount();			// 가입자 수 - 테스트용

	/* 회원가입 */
	Customer redundancyCheckId(@Param("cstId") String cstId); // ID 중복검사
	List<Zip> firstSearchZip();				// 1단계 주소 검색
	List<Zip> secondSearchZip();			// 2단계 주소 검색
	List<Zip> thirdSearchZip();				// 3단계 주소 검색
	void insertJoinCst(Customer customer);	// 회원가입
	
	/* 로그인 */
	Customer loginCst(Customer customer);	// 로그인
	
	
	/** 관리자페이지 */
	List<Customer> selectAllCstInfo();		// 전체고객 정보 조회
	List<Customer> selectBlackCstInfo();	// 관심고객 정보 조회
	List<Customer> selectVIPCstInfo();		// VIP고객 정보 조회
}
