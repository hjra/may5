package net.may5.dao;

import java.util.List;

import net.may5.dto.Customer;
import net.may5.dto.OptionPrice;
import net.may5.dto.Orders;
import net.may5.dto.Payment;

public interface OrderMapper {
	
	public List<Orders> getAlimiList();
	
	public List<Orders> getOrderList();

	public Orders orderList(int orderDate);
	
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
	
/*	public OptionPrice getOptionCard();
*/}


