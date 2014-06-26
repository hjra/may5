package net.may5.controller;

import net.may5.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemController {
	
	@Autowired
	private ItemService itemService;
	
	
	/** 고객페이지↓ */
	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "cst/menu/menuInfo.do")
	public String menuInfo(Model model, String itemId) {
		model.addAttribute("item", itemService.getItems(itemId));
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		// 3. 뷰에 내용 전달하기
		
//		model.addAttribute("itemName", itemName);
//		model.addAttribute("itemInfo", itemInfo);
		return "cst/menu/menuInfo";
	}
	
	
	
	/** 관리자페이지↓ */
	/* 상품관리로 이동 */
	@RequestMapping(value="mng/menuMng/menuListMng.do")
	public String menuListMng(Model model){
		return "mng/menuMng/menuListMng";
	}
}
