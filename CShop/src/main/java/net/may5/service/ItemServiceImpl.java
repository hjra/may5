package net.may5.service;

import java.util.HashMap;
import java.util.List;

import net.may5.dao.ItemMapper;
import net.may5.dto.Evaluation;
import net.may5.dto.Item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("itemService")
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	private static HashMap<String, Integer> param = new HashMap<String, Integer>();

	@Override
	public Item getAnItem(String itemId) {
		return itemMapper.getAnItem(itemId);
		
	}

	@Override
	public List<Item> getItemList() {
		
		return itemMapper.getItemList();
	}
	
	//게시글 수
		@Override
		public int getListCount() {
			
			return itemMapper.getListCount();
		}
	
	
//	@Override
//	public List<Evaluation> getEvaluationList(int page, int limit) {
//		int startrow = (page - 1) * 10; // 읽기 시작할 row 번호.
//		int endrow = startrow + limit; // 읽을 마지막 row 번호.
//		System.out.println("stratrow는 " + startrow);
//		System.out.println("endrow는 " + endrow);
//		
//		param.put("startrow", startrow);
//		param.put("endrow", endrow);
//		return itemMapper.getEvaluationList(param);
//	}
		@Override
		public List<Evaluation> getEvaluationList(String itemId) {
			return itemMapper.getEvaluationList(itemId);
		}
}
