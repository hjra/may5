package net.may5.controller;

import net.may5.dto.Evaluation;
import net.may5.service.EvaluationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EvaluationController {

	@Autowired
	EvaluationService evaluationService;

	@RequestMapping(value = "/cst/menu/commentProc.do", method=RequestMethod.POST)
	public String commentProc(Evaluation evaluation,
			String itemId, String grade, String evaluationContents) {
		
		System.out.println("insertEvaluationContents "+itemId);
		
		evaluation.setEvaluationContents(evaluationContents);
		evaluation.setItemId(itemId);
		evaluation.setGrade(Integer.parseInt(grade));
		evaluationService.setEvaluation(evaluation);
		
		System.out.println("insertComplete => "+evaluationContents.toString());
		
		System.out.println("redirect:/cst/menu/menuInfo.do?itemId="+itemId);
		
		return "redirect:/cst/menu/menuInfo.do?itemId="+itemId;
	}

	
	
//	@RequestMapping(value="/cst/menu/menuAjax.do", method=RequestMethod.POST)
//	public ModelAndView userajax(HttpServletRequest request,
//			HttpServletResponse response, HttpSession session , Evaluation evaluation, String itemId, String index) {
//		
//		//dbinsert
//		
//		//itemid
//		ModelAndView view=new ModelAndView("../menuAjax");
//		session = request.getSession();
//		System.out.println("menuAjax.do왔어용");
//		itemId = request.getParameter("itemId");
//		String grade= request.getParameter("grade");
//		System.out.println("아이템아이디 : "+itemId+"평점 : "+grade);
//		session.setAttribute("grade", grade);
//		System.out.println("평쩜!!"+grade);
//		
//		String evaluationContents = request.getParameter("evaluationContents");
//
//		evaluationService.setEvaluation(evaluation);
//		System.out.println("아이템아이디 : "+itemId+"평점 : "+grade+"댓글내용 : "+evaluationContents);
//		
//		session.getAttribute(index);
//		System.out.println("index::"+index);
//
//		int ind = Integer.parseInt(index);
//		session.setAttribute("ind", ind);
//		System.out.println("index::"+index+"ind::"+ind);
//		System.out.println("성공이에용");
//		
//		session.setAttribute("itemId", itemId);
//		System.out.println("itemId??? ::"+itemId);
////		ModelAndView view=new ModelAndView(
////				"cst/menu/menuInfoComment");
////		return view;
//		view.addObject("result","true");
//		
//		return view;
//	}
}
