package net.may5.service;

import java.util.List;

import net.may5.dto.Evaluation;
import net.may5.dto.Item;
import net.may5.dto.SizeInfo;

public interface ItemService {
	
	public Item getAnItem(String itemId);

	public List<Item> getItemList();
	
	public int getListCount();
	
//	public List<Evaluation>  getEvaluationList(int page, int limit);

	public List<Evaluation>  getEvaluationList(String itemId);
	
	

}
