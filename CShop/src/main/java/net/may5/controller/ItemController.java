package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {
	/* 메뉴상세정보로 이동*/
	@RequestMapping(value="cst/menu/menuInfo.do")
	public String menuList(ModelAndView modelAndView){
		return "cst/menu/menuInfo";
	}
}
