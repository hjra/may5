package net.may5.controller;

import net.may5.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	/** 고객페이지 ↓ */
	/* 예약주문 */
	@RequestMapping(value = "cst/order/advanceOrder.do")
	public String advanceOrder(Model model) {
		return "cst/order/advanceOrder";
	}
	
	/* 주문상세 */
	@RequestMapping(value = "cst/order/orderDetail.do")
	public String orderDetail(Model model){
		return "cst/order/orderDetail";
	}
	
	
	/** 관리자페이지↓ */
	/* 주문정보화면으로 이동 */
	@RequestMapping("mng/orderInfoMng/orderListMng.do")
	public String orderListMng(){
		return "mng/orderInfoMng/orderListMng";
	}
	
	/*주문내역관리*/
	@RequestMapping(value = "mng/deliveryMng/dlvNotice.do")
	public String dlvNotice(Model model) {
		return "mng/deliveryMng/dlvNotice";
	}
	
	/*주문내역(알리미)관리*/
	@RequestMapping(value = "mng/deliveryMng/dlvmImage.do", method = RequestMethod.GET)
	public String dlvmImage(@RequestParam String cstId, Model model) {
		model.addAttribute("mng", orderService.orderAlimi(cstId));
		return "mng/deliveryMng/dlvmImage";
	}
	
	
	/*주문내역이미지관리*/
	@RequestMapping(value = "mng/deliveryMng/dlvmImage.do")
	public String dlvmImage(Model model) {
		return "mng/deliveryMng/dlvmImage";
	}

}
