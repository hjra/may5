package net.may5.controller;

import net.may5.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {
	
	@Autowired
	private ItemService itemService;
	
	/* 메뉴상세정보로 이동 */
	@RequestMapping(value = "cst/menu/menuInfo.do")
	public ModelAndView menuList(String itemId) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("itemId", itemService.getItems(itemId));
		modelAndView.setViewName("cst/menu/menuInfo.do");
		return modelAndView;
	}
}
