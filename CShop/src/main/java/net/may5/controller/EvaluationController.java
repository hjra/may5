package net.may5.controller;

import javax.servlet.http.HttpSession;

import net.may5.dto.Evaluation;
import net.may5.service.EvaluationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EvaluationController {

	@Autowired
	EvaluationService evaluationService;

	@RequestMapping(value = "/cst/menu/commentOk.do")
	public String commentOk(HttpSession session, String itemId,
			String itemName, String itemPrice, String grade,
			Evaluation evaluation, Model model, String evaluationContents) {
		// session.setAttribute("itemId", itemId);
		// session.setAttribute("grade", grade);
		// session.setAttribute("evaluationContents", evaluationContents);
		// session.setAttribute("cstCode", 2);
		System.out.println("코멘트오케잉");
		// evaluationService.setEvaluation(evaluation);
		// System.out.println(evaluationContents.toString());
		return "cst/menu/commentOk";
	}

	@RequestMapping(value = "/cst/menu/commentProc.do")
	public String commentProc(HttpSession session, String itemId,
			String itemName, String itemPrice, String grade,
			Evaluation evaluation, Model model, String evaluationContents) {
		session.setAttribute("itemId", itemId);
		session.setAttribute("grade", grade);
		session.setAttribute("evaluationContents", evaluationContents);
		session.setAttribute("cstCode", 2);
		System.out.println("코멘트");
		evaluationService.setEvaluation(evaluation);
		System.out.println(evaluationContents.toString());
		return "cst/menu/commentOk";
	}

}
