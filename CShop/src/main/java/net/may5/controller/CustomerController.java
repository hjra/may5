package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {

	/** 고객페이지↓ */
	@RequestMapping(value = "/cst/home/homeImage.do")
	public String homeImage(Model model) {
		return "cst/home/homeImage";

	}
	
	/* 회원가입 동의폼으로 이동 */
	@RequestMapping("cst/membership/termsForm.do")
	public String termsForm(Model model){
		return "cst/membership/termsForm";
	}
	
	/* 회원가입 입력폼으로 이동 */
	@RequestMapping(value="cst/membership/joinForm.do"
			, method=RequestMethod.POST)
	public String joinForm(/*@RequestParam String receiveMail,*/ Model model){
	//	이벤트메일수신 동의여부 가져가기
		return "cst/membership/joinForm";
	}
	
	/* 회원가입 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/joinOk.do"
			, method=RequestMethod.POST)
	public String joinSuccess(Model model){
	//	고객정보 DB에 insert
		return "cst/membership/joinOk";
	}
	
	/* 로그인 입력폼으로 이동 */
	@RequestMapping("cst/membership/loginForm.do")
	public String loginForm(Model model){
		return "cst/membership/loginForm";
	}
	
	/* 회원 로그인 성공화면으로 이동 */
	/* 비회원 로그인 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/loginProcess.do"
			, method=RequestMethod.POST)
	public String loginProcess(Model model){
		return "cst/membership/loginOk";
	}
	
	
	/* 회원정보 찾기폼으로 이동 */
	
	/* 아이디찾기 성공화면으로 이동 */
	
	/* 비번찾기 입력폼으로 이동 */
	
	/* 비번찾기 변경폼으로 이동 */
	
	/* 비로그인 비번변경 성공화면으로 이동 */
	
	/* 마이페이지 메인화면으로 이동 */
	
	/* 회원정보수정 입력폼으로 이동 */
	
	/* 회원탈퇴 입력폼으로 이동 */
	
	/* 회원탈퇴 인증폼으로 이동 */
	
	/* 메뉴리스트로 이동*/
	@RequestMapping(value="cst/menu/menuList.do")
	public String menuList(Model model){
		return "cst/menu/menuList";
	}
	@RequestMapping(value="cst/menu/menuInfo.do")
	public String menuInfo(Model model, String itemId){
		// 2. 디비에서 쿼리 날려 데이터 알아오기
		
		// 3. 뷰에 내용 전달하기
		model.addAttribute("itemId", itemId);
		model.addAttribute("itemName", "Cake!");
		return "cst/menu/menuInfo";
	}
	/*  */
	
	
	/** 관리자페이지↓ */
}
