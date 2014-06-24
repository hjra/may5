package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	
	/* 고객페이지 첫화면으로 이동 33333 */
	@RequestMapping(value = "cst/home/homeImage.do")
	public String homeImage(Model model) {
		return "cst/home/homeImage";

	}
	
	/* 회원가입 동의폼으로 이동 */
	
	
	
	/* 회원가입 입력폼으로 이동 */
	
	
	
	/* 회원가입 성공화면으로 이동 */
	/*  */
	/*  */
	/*  */
	/*  */
	/* 메뉴리스트로 이동*/
	@RequestMapping(value="cst/menu/menuList.do")
	public String menuList(Model model){
		return "cst/menu/menuList";
	}
	/*  */
}
