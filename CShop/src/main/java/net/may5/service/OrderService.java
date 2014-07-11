package net.may5.service;

import java.util.List;

import net.may5.dto.Customer;

import net.may5.dto.Orders;
import net.may5.dto.Payment;

public interface OrderService {

	public List<Orders> getAlimiList();

	public List<Orders> getOrderList();
	
	public List<Orders> getOrderListMng();
	
	public Customer getCstExistingInfo(String cstId);
	
	public List<Payment> getCardKind();
	
	public List<Payment> getPayKind();
	
	public List<Payment> getCardSection();
	
	public List<Payment> getInstallment();

	public List<Payment> getCashReceiptRequestInfoSave();
	
	public List<Payment> getCashReceiptRequestWay();
	
	public List<Payment> getDeduction();
	
	public List<Orders> getOptionPrice();
	

	/*알리미*/
	public List<Orders> getLevelCodeSearch(String levelCode); // levelCode로 조회하기
	public List<Orders> getCstIdSearch(String cstId);		// cstId로 조회하기
	public List<Orders> getOrderNumberSearch(String orderDate ,String sameTimeCount , String itemId); // orderNumber로 조회하기

	/*주문내역*/
	public List<Orders> getorderDateSearch(String orderDate); // orderDate로 조회하기
	public List<Orders> getitemNameSearch(String itemName);		// itemName로 조회하기
	public List<Orders> getOrderlNumberSearch(String orderDate ,String sameTimeCount , String itemId); // orderNumber로 조회하기

	
	/*public OptionPrice getOptionCard();*/
}

