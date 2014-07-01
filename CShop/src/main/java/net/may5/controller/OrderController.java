package net.may5.controller;

import java.util.List;

import net.may5.dto.Orders;
import net.may5.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


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
	
	
	/*주문내역*/
	@RequestMapping("cst/order/orderList.do")
	public ModelAndView orderList() {
		ModelAndView model = new ModelAndView();
		model.setViewName("cst/order/orderList");
		List<Orders> orderList = orderService.getOrderList();
		model.addObject("orderList", orderList);
		return model;
	}
	/*주문검색*/
	@RequestMapping("/cst/order/orderSearch.do")
	public ModelAndView orderSearch() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/cst/order/orderSearch");
		return model;
	}
	/*주문검색내역*/
	@RequestMapping(value = "/cst/order/orderList.do", method = RequestMethod.GET)
	public String orderList(@RequestParam int orderDate, Model model) {
		model.addAttribute("orders", orderService.orderList(orderDate));
		return "/cst/order/orderList";
	}
	
	
	/* 주문상세 */
	@RequestMapping(value = "cst/order/orderDetail.do")
	public String orderDetail(Model model){
		return "cst/order/orderDetail";
	}
	
	/* 수취인정보 */
	@RequestMapping(value = "cst/order/advanceOrderPayment.do")
	public String advanceOrderPayment(Model model){
		return "cst/order/advanceOrderPayment";
	}
	
	/** 관리자페이지↓ */
	/* 주문정보화면으로 이동 */
	@RequestMapping("mng/orderInfoMng/orderListMng.do")
	public String orderListMng(){
		return "mng/orderInfoMng/orderListMng";
	}
	
	/*알리미리스트*/
	@RequestMapping("mng/deliveryMng/dlvNotice.do")
	public ModelAndView alimiList() {
		ModelAndView model = new ModelAndView();
		model.setViewName("mng/deliveryMng/dlvNotice");
		List<Orders> alimilist = orderService.getAlimiList();
		model.addObject("alimilist", alimilist);
		return model;
	}


}
