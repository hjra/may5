package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {

	
	/* ������������ ù ȭ������ �̵� */
	@RequestMapping(value ="mng/loginMng/loginForm.do")
	public String loginForm(Model model) {
		return "mng/loginMng/loginForm";

	}
}
