package net.may5.controller;

import net.may5.service.EvaluationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EvaluationController {
	
	@Autowired
	EvaluationService evaluationService;
	
	@RequestMapping(value="/cst/menu/commentOk.do")
	public String commentOk(){
		System.out.println("코멘트오케잉");
		return "cst/menu/commentOk";
	}

}
