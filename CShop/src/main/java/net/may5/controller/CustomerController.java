package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CustomerController {

	/** 고객페이지↓ */
	/* 고객페이지 첫화면으로 이동 */
	@RequestMapping("cst/home/homeImage.do")
	public String homeImage(Model model) {
		return "cst/home/homeImage";

	}
	
	/* 회원가입 동의폼으로 이동 */
	@RequestMapping(value="cst/membership/termsForm.do"
			,method=RequestMethod.GET)
	public String termsForm(/*@RequestParam String receiveMail,*/ Model model){
		
		return "cst/membership/termsForm";
	}
	
	/* 회원가입 입력폼으로 이동 */
	
	/* 회원가입 성공화면으로 이동 */
	
	/* 로그인 입력폼으로 이동 */
	
	/* 회원 로그인 성공화면으로 이동 */
	
	/* 비회원 로그인 성공화면으로 이동 */
	
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
	/*  */
	
	
	/** 관리자페이지↓ */
}
