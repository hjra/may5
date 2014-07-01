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
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;

	/** 고객페이지↓ */

	/* 메뉴리스트로 이동 */
	@RequestMapping(value = "cst/menu/menuList.do")
	public String menuList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("itemList", itemService.getItemList());
		return "cst/menu/menuList";
	}

	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "cst/menu/menuInfo.do")
	public ModelAndView menuInfo(HttpServletRequest request,
			HttpServletResponse response, String itemList, String itemId,
			String index, Model model) {
		HttpSession session = request.getSession();
		session.getAttribute(itemList);
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		// 3. 뷰에 내용 전달하기
		session.setAttribute("index", index);
		int ind = Integer.parseInt(index);
		model.addAttribute("ind", ind);
		// model.addAttribute("evaluationList",
		// itemService.getEvaluationList());

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		// 총 리스트 수
		int listcount = itemService.getListCount();
		System.out.println("count는 " + listcount);

		// 게시글 리스트
		// List<Evaluation> evaluationList = itemService.getEvaluationList(page,
		// limit);
		List<Evaluation> evaluationList = itemService.getEvaluationList(itemId);
		System.out.println(itemId);
		System.out.println(evaluationList.toString());

		// 총 페이지 수
		// 0.95를 더해서 올림 처리
		int maxpage = (int) ((double) listcount / limit + 0.95);
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;
		ModelAndView view = new ModelAndView("cst/menu/menuInfo");

		view.addObject("page", page); // 현재 페이지 수
		view.addObject("maxpage", maxpage); // 최대 페이지 수
		view.addObject("startpage", startpage); // 현재 페이지에 표시할 첫 페이지 수
		view.addObject("endpage", endpage); // 현재 페이지에 표시할 끝 페이지 수
		view.addObject("listcount", listcount); // 글 수
		view.addObject("evaluationList", evaluationList); // 게시글 리스트
		return view;
	}

	@RequestMapping(value="cst/menu/menuInfoComment.do")
	public ModelAndView menuInfoComment(HttpServletRequest request,
			HttpServletResponse response, String itemList, String itemId,
			String index, Model model) {
		HttpSession session = request.getSession();
		session.getAttribute(itemList);
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		// 3. 뷰에 내용 전달하기
		session.setAttribute("index", index);
		int ind = Integer.parseInt(index);
		model.addAttribute("ind", ind);
		// model.addAttribute("evaluationList",
		// itemService.getEvaluationList());

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		// 총 리스트 수
		int listcount = itemService.getListCount();
		System.out.println("count는 " + listcount);

		// 게시글 리스트
		// List<Evaluation> evaluationList = itemService.getEvaluationList(page,
		// limit);
		List<Evaluation> evaluationList = itemService.getEvaluationList(itemId);
		System.out.println(itemId);
		System.out.println(evaluationList.toString());

		// 총 페이지 수
		// 0.95를 더해서 올림 처리
		int maxpage = (int) ((double) listcount / limit + 0.95);
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;
		ModelAndView view = new ModelAndView("cst/menu/menuInfo");

		view.addObject("page", page); // 현재 페이지 수
		view.addObject("maxpage", maxpage); // 최대 페이지 수
		view.addObject("startpage", startpage); // 현재 페이지에 표시할 첫 페이지 수
		view.addObject("endpage", endpage); // 현재 페이지에 표시할 끝 페이지 수
		view.addObject("listcount", listcount); // 글 수
		view.addObject("evaluationList", evaluationList); // 게시글 리스트
		return view;
	}
	
	/** 관리자페이지↓ */
	/* 상품관리로 이동 */
	@RequestMapping(value = "mng/menuMng/menuListMng.do")
	public String menuListMng(Model model) {
		return "mng/menuMng/menuListMng";
	}
}