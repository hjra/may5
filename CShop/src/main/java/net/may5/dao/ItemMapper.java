package net.may5.dao;

import java.util.HashMap;
import java.util.List;

import net.may5.dto.Evaluation;
import net.may5.dto.Item;


public interface ItemMapper {

	public Item getAnItem(String itemId);

	public List<Item> getItemList();
	
	public int getListCount();
	
	public int getAnItemListCount(String itemId);
	
	public List<Evaluation> getEvaluationList(HashMap<String, String> param);

	public List<Evaluation> getOrderList();

	public int getOrderListCount();
}