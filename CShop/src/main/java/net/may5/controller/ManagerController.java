package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	/** 관리자페이지 */
	/* 관리자페이지 첫 화면으로 이동 */
	@RequestMapping(value ="mng/loginMng/loginForm.do")
	public String loginForm(Model model) {
		return "mng/loginMng/loginForm";
	}
	
	/* 로그인화면으로 이동 */
	@RequestMapping(value="mng/loginMng/loginProcess.do"
			, method=RequestMethod.POST)
	public String loginProcess(Model model){
		
		return "mng/loginMng/loginOk"; // 실제 JSP 경로
	}
	
}
