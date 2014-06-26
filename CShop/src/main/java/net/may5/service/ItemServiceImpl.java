package net.may5.service;

import java.util.List;

import net.may5.dao.ItemMapper;
import net.may5.dto.Item;
import net.may5.dto.SizeInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("itemService")
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	@Override
	public Item getItems(String itemId) {
		return itemMapper.getItems(itemId);
		
	}

	@Override
	public SizeInfo getSizeInfo(String sizeCode) {
		
		return itemMapper.getSizeInfo(sizeCode);
	}

	@Override
	public List<Item> getItemList() {
		
		return itemMapper.getItemList();
	}
	
}

