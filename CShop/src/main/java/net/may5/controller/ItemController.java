package net.may5.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.may5.dto.Evaluation;
import net.may5.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
		System.out.println("리스트:: " + itemService.getItemList());
		return "cst/menu/menuList";
	}

	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "menuInfo.do", method = RequestMethod.GET)
	public ModelAndView menuInfo(HttpServletRequest request, String itemId,
			String page, String cstLogin, Model model) {

		HttpSession session = request.getSession();
		session.getAttribute(cstLogin);
		System.out.println("고객님 아이디는? 메뉴인포.두::" + cstLogin);

		if (itemId == null) {
			session.getAttribute(itemId);
			System.out.println("세션에서 가지고 온 아이템 아이디::" + itemId);
		} else {
			session.setAttribute("itemId", itemId);
			System.out.println("session set itemId::" + itemId);
			model.addAttribute("anItem", itemService.getAnItem(itemId));
			System.out.println("anItem::" + itemService.getAnItem(itemId));
		}

		// 시작
		int ipage = page == null ? 1 : Integer.parseInt(page);
		int limit = 10;

		// 총 리스트 수
		int listcount = itemService.getListCount();
		System.out.println("count는 " + listcount);

		// 한 아이템 당 리스트 수
		int anItemListCount = itemService.getAnItemListCount(itemId);
		System.out.println(anItemListCount);

		// 게시글 리스트
		System.out.println("itemContorller:" + itemId);

		List<Evaluation> evaluationList = itemService.getEvaluationList(itemId,
				ipage, limit);

		System.out.println(itemId);
		System.out.println(evaluationList.toString());

		// 총 페이지 수
		// 0.95를 더해서 올림 처리
		int maxpage = (int) ((double) anItemListCount / limit + 0.95);
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = (((int) ((double) ipage / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		// return
		ModelAndView view = new ModelAndView("cst/menu/menuInfo");

		view.addObject("page", ipage); // 현재 페이지 수
		view.addObject("maxpage", maxpage); // 최대 페이지 수
		view.addObject("startpage", startpage); // 현재 페이지에 표시할 첫 페이지 수
		view.addObject("endpage", endpage); // 현재 페이지에 표시할 끝 페이지 수
		view.addObject("listcount", listcount); // 모든 아이템의 총 글 수
		view.addObject("anItemListCount", anItemListCount); // 한 아이템 당 글 수
		view.addObject("evaluationList", evaluationList); // 게시글 리스트

		return view;
	}

	/** 관리자페이지↓ */
	/* 상품관리로 이동 */
	@RequestMapping(value = "menuListMng.do")
	public String menuListMng(Model model) {
		model.addAttribute("itemList", itemService.getItemList());
		return "mng/menuMng/menuListMng";
	}

	@RequestMapping(value = "menuInsertMng.do")
	public String menuInsertMng() {
		return "mng/menuMng/menuModifyMng";
	}

	@RequestMapping(value = "menuInfoMng.do")
	public ModelAndView menuInfoMng(String itemId, String page) {

		ModelAndView view = new ModelAndView("mng/menuMng/menuInfoMng");

		if (itemId == null) {
			return new ModelAndView("redirect:/menuListMng");
		} else {
			view.addObject("anItem", itemService.getAnItem(itemId));
		}

		int ipage = (page == null) ? 1 : Integer.parseInt(page);
		int limit = 10;
		List<Evaluation> evaluationList = itemService.getEvaluationList(itemId,
				ipage, limit);

		view.addObject("page", ipage); // 현재 페이지 수
		// view.addObject("maxpage", maxpage); // 최대 페이지 수
		// view.addObject("startpage", startpage); // 현재 페이지에 표시할 첫 페이지 수
		// view.addObject("endpage", endpage); // 현재 페이지에 표시할 끝 페이지 수
		// view.addObject("listcount", listcount); // 모든 아이템의 총 글 수
		// view.addObject("anItemListCount", anItemListCount); // 한 아이템 당 글 수
		view.addObject("evaluationList", evaluationList); // 게시글 리스트
		return view;
	}

	@RequestMapping(value = "menuItemDelete.do", method = RequestMethod.POST)
	public String menuItemDelete(HttpServletRequest request) {

		Map<String, String[]> requestParams = request.getParameterMap();

		for (Map.Entry<String, String[]> entry : requestParams.entrySet()) {
			String key = entry.getKey(); // parameter name
			String[] values = entry.getValue(); // parameter values as array of
												// String

			if (key.equals("deleteItem")) {
				for (int i = 0; i < values.length; i++) {
					String deleteItemId = values[i];
					System.out.println("삭제대상 => " + deleteItemId);
					itemService.deleteItem(deleteItemId);
				}
			}
		}

		return "redirect:/menuListMng.do";
	}

	// 검색하기위한 두
	@RequestMapping(value = "menuStockMng.do")
	public String menuStockMng(Model model, String orderDate) {

		if (orderDate == null) {
			// 파라메터를 존재하지 않으면 오늘날짜 텍스트를 구해옵니다.
			String today = (new SimpleDateFormat("YYYY-MM-dd", Locale.KOREA))
					.format(new Date()).substring(0, 10);
			System.out.println("today" + today);
			
//			model.addAttribute("orderList", itemService.getOrderList(today));
//			model.addAttribute("paramDate", today);
//			 model.addAttribute("orderCount",
//			 itemService.getOrderListDailyCount(todayDate));
//			 model.addAttribute("getOrderListSameItemId",
//			 itemService.getOrderListCountSameItemId(today));
//			 System.out.println("오늘 같은 카운트 아이템:: "+ itemService.getOrderListCountSameItemId(today));
		} else {
			model.addAttribute("orderList", itemService.getOrderList(orderDate));
			model.addAttribute("paramDate", orderDate);
			model.addAttribute("orderCount",  itemService.getOrderListDailyCount(orderDate));
			System.out.println("특정날짜 오더리스트 :: "+ itemService.getOrderList(orderDate));
			System.out.println("특정날짜 몇개 팔았나요?? :: "+itemService.getOrderListDailyCount(orderDate));
//			 model.addAttribute("getOrderListSameItemId",
//			 itemService.getOrderListCountSameItemId(orderDate));
			System.out.println(itemService.getOrderListCount());

		}
		
		System.out.println("메뉴스탁엠엔쥐컨트롤러");
		return "mng/menuMng/menuStockMng";

	}

	// 마감을 하기위한 두

	// 날짜선택 - 특정날짜를 선택!
	@RequestMapping(value = "datePicker.do")
	public String datePicker(Date thisDay, Model model) {
		System.out.println("선택하신 날짜는 :: " + thisDay);
		model.addAttribute("thisDay", thisDay);
		return "mng/menuMng/menuStockMng";
	}

	// 마감작업 - 재고를 0으로
	@RequestMapping(value = "stockToZero.do")
	public String stockToZero() {
		System.out.println("재고가 모두 0이 되었습니다.");

		return "mng/menuMng/menuStockMng";
	}

}
