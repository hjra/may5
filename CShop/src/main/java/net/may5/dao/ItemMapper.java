package net.may5.dao;

import java.util.List;

import net.may5.dto.Item;
import net.may5.dto.SizeInfo;


public interface ItemMapper {

	public Item getAnItem(String itemId);

	public SizeInfo getSizeInfo(String sizeCode);

	public List<Item> getItemList();

}