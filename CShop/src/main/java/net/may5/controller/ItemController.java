package net.may5.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	/* 메뉴리스트로 이동*/
	@RequestMapping(value="cst/menu/menuList.do")
	public String menuList(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("itemList", itemService.getItemList());
		return "cst/menu/menuList";
	}
	
	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "cst/menu/menuInfo.do")
	public String menuInfo(HttpServletRequest request, String itemList, String index, Model model) {
		HttpSession session = request.getSession();
		session.getAttribute(itemList);
		
//		model.addAttribute("sizeCode", itemService.getSizeInfo(sizeCode));
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		// 3. 뷰에 내용 전달하기
		model.addAttribute("index", index);
		int ind = Integer.parseInt(index);
		model.addAttribute("ind",ind);
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
