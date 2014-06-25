package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemController {
	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "cst/menu/menuInfo.do")
	public String menuInfo(Model model, String itemId, String itemName) {
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		// 3. 뷰에 내용 전달하기
		model.addAttribute("itemId", itemId);
		model.addAttribute("itemName", itemName);
		return "cst/menu/menuInfo";
	}
}
