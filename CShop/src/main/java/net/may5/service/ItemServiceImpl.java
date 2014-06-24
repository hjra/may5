package net.may5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.may5.dao.ItemMapper;
import net.may5.dto.Item;

@Service("itemService")
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemMapper itemMapper;

	@Override
	public Item getItems(String itemId) {

		return itemMapper.getItems(itemId);
	}
}
