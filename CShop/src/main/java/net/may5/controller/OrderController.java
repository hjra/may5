package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	/** 관리자페이지↓ */
	/* 주문정보화면으로 이동 */
	@RequestMapping("mng/orderInfoMng/orderListMng.do")
	public String orderListMng(){
		return "mng/orderInfoMng/orderListMng";
	}
}
