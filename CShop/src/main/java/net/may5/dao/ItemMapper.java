package net.may5.dao;

import java.util.List;
import java.util.Map;

import net.may5.dto.Evaluation;
import net.may5.dto.Item;
import net.may5.dto.SizeInfo;


public interface ItemMapper {

	public Item getAnItem(String itemId);

	public List<Item> getItemList();
	
	public int getListCount();
	
//	public List<Evaluation>  getEvaluationList(Map<String, Integer> param);

	public List<Evaluation> getEvaluationList(String itemId);
	
	

}