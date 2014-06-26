package net.may5.dao;

import net.may5.dto.Item;
import net.may5.dto.SizeInfo;


public interface ItemMapper {

	public Item getItems(String itemId);

	public SizeInfo getSizeInfo(String sizeCode);

}
