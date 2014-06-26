package net.may5.service;

import net.may5.dto.Item;
import net.may5.dto.SizeInfo;

public interface ItemService {
	
	public Item getItems(String itemId);

	public SizeInfo getSizeInfo(String sizeCode);
}
