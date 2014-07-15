package net.may5.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	@RequestMapping("advanceOrder.do")
	public String advanceOrder(HttpServletRequest request, Model model, String cstLogin, String cstId) {
		HttpSession session = request.getSession();
		session.getAttribute(cstLogin);
		model.addAttribute("optionPrice", orderService.getOptionPrice());
		return "cst/order/advanceOrder";
	}
	
	/* 주문상세 */
	@RequestMapping("orderDetail.do")
	public String orderDetail( Model model,  String cstId){
		Orders orders = new Orders();
		model.addAttribute("orders", orders);
		model.addAttribute("cstExistingInfo",orderService.getCstExistingInfo(cstId));
		return "cst/order/orderDetail";
	}
	
	/*QR코드 테스트*/
	/*@RequestMapping("orderTemp.do")
	public String orderDetail( Model model,  String cstId){
		Orders orders = new Orders();
		model.addAttribute("orders", orders);
		model.addAttribute("cstExistingInfo",orderService.getCstExistingInfo(cstId));
		return "cst/order/orderTemp";
	}
	
	@RequestMapping("qrcode.do")
	public String qrcode(){
		return "cst/order/qrcode";
	}*/
	
	/* 기존정보사용*/
	@RequestMapping("cstExistingInfo.do")
	public String cstExistingInfo( Model model){
		
		return "cst/order/orderDetail";
	}
	
	/* 수취인정보 */
	@RequestMapping("advanceOrderPayment.do")
	public String advanceOrderPayment(Model model){
		model.addAttribute("payKind", orderService.getPayKind());
		model.addAttribute("cardSection", orderService.getCardSection());
		model.addAttribute("cashReceiptRequestInfoSave", orderService.getCashReceiptRequestInfoSave());
		System.out.println(orderService.getCashReceiptRequestInfoSave());
		model.addAttribute("deduction", orderService.getDeduction());
		model.addAttribute("cardKind",orderService.getCardKind());
		model.addAttribute("installment", orderService.getInstallment());
		model.addAttribute("cashReceiptRequestWay", orderService.getCashReceiptRequestWay());
		return "cst/order/advanceOrderPayment";
	}
	
	/* 카드(QR)옵션
	@RequestMapping("optionCard.do")
	public String getOptionCard( Model model, int optionCode){
		
		return "redirect:/advanceOrder.do";
	}*/
	
	
	/*주문내역*/
	@RequestMapping("orderList.do")
	public ModelAndView orderList() {
		ModelAndView model = new ModelAndView();
		model.setViewName("cst/order/orderList");
		List<Orders> orderList = orderService.getOrderList();
		model.addObject("orderList", orderList);
		
		/*model.addObject("orderList",orderService.getOrderList());*/
		
		return model;
	}
	
	/*주문검색*/
	@RequestMapping("orderSearch.do")
	public ModelAndView orderSearch() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/cst/order/orderSearch");
		return model;
	}
	/*주문검색내역*/
	@RequestMapping(value = "orderList.do", method = RequestMethod.GET)
	public String orderList(@RequestParam int orderDate, Model model) {
		model.addAttribute("orders", orderService.orderList(orderDate));
		return "/cst/order/orderList";
	}
	
	
	
	/** 관리자페이지↓ */
	/* 주문정보화면으로 이동 */
	@RequestMapping("orderListMng.do")
	public ModelAndView getOptionPrice(){
		ModelAndView model = new ModelAndView();
		model.setViewName("mng/orderInfoMng/orderListMng");
		model.addObject("orderListMng",orderService.getOrderListMng());
		return model;
	}
	
	/*알리미리스트*/
	@RequestMapping("dlvNotice.do")
	public ModelAndView alimiList() {
		ModelAndView model = new ModelAndView();
		model.setViewName("mng/deliveryMng/dlvNotice");
		List<Orders> alimilist = orderService.getAlimiList();
		model.addObject("alimilist", alimilist);
		return model;
	}
	
	

	
}

