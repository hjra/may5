package net.may5.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.may5.dto.Manager;
import net.may5.service.ManagerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;

	/** 관리자페이지 */
	/* 관리자페이지 첫 화면으로 이동 */
	@RequestMapping("mngLoginForm.do")
	public String loginForm(Model model, HttpServletRequest request) {
		Manager mngLogin = (Manager)request.getSession().getAttribute("mngLogin");
		model.addAttribute("mngLogin", mngLogin);
		Manager manager = new Manager();
		model.addAttribute("manager", manager);
		return "mng/loginMng/loginForm";
	}
	
	/* 로그인 성공화면으로 이동 */
	@RequestMapping(value="mngLoginProcess.do", method=RequestMethod.POST)
	public String loginProcess(Model model, Manager manager,
			HttpServletRequest request, HttpSession session){
		
		session = request.getSession();
		
		Manager mngLogin = managerService.loginMng(manager);
		if(mngLogin != null){
			if(!session.isNew()){
				session = request.getSession(true);
			}
			session.setAttribute("mngLogin", mngLogin);
			return "mng/loginMng/loginOk";			
		}else{
			request.setAttribute("errMsg", "아이디 또는 비밀번호를 다시 확인하세요<br>"
					+ "C#에 등록되지 않은 아이디이거나,<br>"
					+ "아이디 또는 비밀번호를 잘못 입력하셨습니다.<br>"
					+ "로그인 정보를 잃어버리셨다면 관리자에게 문의해 주세요.");
		}
		return "mng/loginMng/loginForm";
	}
	
	/* 로그아웃 */
	@RequestMapping("mngLogoutProcess.do")
	public String logoutProcess(Model model, HttpSession session){
		System.out.println("관리자 로그아웃");
		session.removeAttribute("mngLogin");
		session.invalidate();
		Manager manager = new Manager();
		model.addAttribute("manager", manager);
		return "mng/loginMng/loginForm";
	}
	
	/* 직원정보페이지으로 이동 */
	@RequestMapping("managerInfo.do")	
	public String managerInfo(Model model){
		return "mng/manager/managerInfo";	
	}
	
	/* 직원정보  생성/수정페이지으로 이동 */
	@RequestMapping(value="managerEdit.do", method=RequestMethod.POST)	
	public String managerEdit(Model model){
		//데이터를 넘길 것들
		return "mng/manager/managerEdit";	
	}
}
