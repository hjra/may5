package net.may5.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.may5.dto.Evaluation;
import net.may5.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;

	/** 고객페이지↓ */
	/* 메뉴리스트로 이동 */
	@RequestMapping(value = "menuList.do")
	public String menuList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("itemList", itemService.getItemList());
		System.out.println("리스트:: "+itemService.getItemList());
		return "cst/menu/menuList";
	}

	/* 메뉴상세정보로 이동 */
	@RequestMapping(value="menuInfo.do", method=RequestMethod.GET)
	public ModelAndView menuInfo(HttpServletRequest request,
			HttpServletResponse response, 
			String itemId, String page, 
			Model model) {
		
		HttpSession session = request.getSession();
		if(itemId==null){
		session.getAttribute(itemId);
		System.out.println("세션에서 가지고 온 아이템 아이디::"+itemId);
		}else{
		session.setAttribute("itemId", itemId);
		System.out.println("session set itemId::"+itemId);
		model.addAttribute("anItem", itemService.getAnItem(itemId));
		System.out.println("anItem::"+itemService.getAnItem(itemId));
		}
		
		
		// 시작
		int ipage = request.getParameter("page") ==  null ? 1 : Integer.parseInt(request.getParameter("page"));  
		int limit = 10;

		

		// 총 리스트 수
		int listcount = itemService.getListCount();
		System.out.println("count는 " + listcount);

		// 게시글 리스트
//		 List<Evaluation> evaluationList = itemService.getEvaluationList(page,
//		 limit);
		//List<Evaluation> evaluationList = itemService.getEvaluationList(itemId);
		System.out.println("itemContorller:"+itemId);

		List<Evaluation> evaluationList = itemService.getEvaluationList(itemId, ipage, limit);
		
		System.out.println(itemId);
		System.out.println(evaluationList.toString());

		// 총 페이지 수
		// 0.95를 더해서 올림 처리
		//int maxpage = (int) ((double) listcount / limit + 0.95);
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		//int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		//int endpage = startpage + 10 - 1;

		//if (endpage > maxpage) endpage = maxpage;
		
		
		
		//return
		ModelAndView view = new ModelAndView("cst/menu/menuInfo");

		view.addObject("page", ipage); // 현재 페이지 수
		//view.addObject("maxpage", maxpage); // 최대 페이지 수
		//view.addObject("startpage", startpage); // 현재 페이지에 표시할 첫 페이지 수
		//view.addObject("endpage", endpage); // 현재 페이지에 표시할 끝 페이지 수
		view.addObject("listcount", listcount); // 글 수
		view.addObject("evaluationList", evaluationList); // 게시글 리스트

		return view;
	}

	
	
	/** 관리자페이지↓ */
	/* 상품관리로 이동 */
	@RequestMapping(value = "menuListMng.do")
	public String menuListMng(Model model) {
		return "mng/menuMng/menuListMng";
	}
}
