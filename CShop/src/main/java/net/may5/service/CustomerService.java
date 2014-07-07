package net.may5.service;

import java.util.List;
import java.util.Map;

import net.may5.dto.Customer;
import net.may5.dto.Zip;


public interface CustomerService {

	/** 고객페이지 */
	public int getAllCustomerCount();					// 가입자 수 -테스트용
	public Customer redundancyCheckId(String cstId);	// ID 중복검사
	
	public List<Zip> firstSearchZip();					// 1단계 주소 검색
	public List<Zip> secondSearchZip();					// 2단계 주소 검색
	public List<Zip> thirdSearchZip();					// 3단계 주소 검색
	public void insertJoinCst(Customer customer);		// 회원가입

	public Customer loginCst(Customer customer);		// 로그인
	
	
	/** 관리자페이지 */
	public List<Customer> selectAllCstInfo();			// 전체고객 정보 조회
	public List getAllCstInfo(Map<String, Object> paramMap); // Json Test
	public List<Customer> selectBlackCstInfo();			// 관심고객 정보 조회
	public List<Customer> selectVIPCstInfo();			// VIP고객 정보 조회
	
}
