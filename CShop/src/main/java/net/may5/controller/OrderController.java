package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	/** 고객페이지 ↓ */
	/* 주문내역 */
	@RequestMapping(value = "cst/order/orderList.do")
	public String oderList(Model model) {
		return "cst/order/orderList";
	}
	
	/*  */
	/*  */
	/*  */
	/*  */
	
	/** 관리자페이지↓ */
	/* 주문정보화면으로 이동 */
	@RequestMapping("mng/orderInfoMng/orderListMng.do")
	public String orderListMng(){
		return "mng/orderInfoMng/orderListMng";
	}
	
	/*주문내역(알리미)관리*/
	@RequestMapping(value = "mng/deliveryMng/dlvNotice.do")
	public String dlvNotice(Model model) {
		return "mng/deliveryMng/dlvNotice";
	}
	
	/*주문내역이미지관리*/
	@RequestMapping(value = "mng/deliveryMng/dlvmImage.do")
	public String dlvmImage(Model model) {
		return "mng/deliveryMng/dlvmImage";
	}

}
