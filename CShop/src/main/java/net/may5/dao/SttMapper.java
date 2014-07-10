package net.may5.dao;


public interface SttMapper {

	public int getDailyCountForOrder(String orderDate);

	public int getOrderCount();
	
	public int getCustomerCount();
	
	public int getDCustomerCount();

	public int getDailyCountForMenu();

	public int getCakeCount();
}
