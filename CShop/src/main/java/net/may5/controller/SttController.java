package net.may5.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;



import net.may5.service.SttService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SttController {
	
	@Autowired
	private SttService sttService;
	
	/* 일일현황 */
	@RequestMapping(value="dailyReport.do")
	public String dailyReport(Model model, Date orderDate){

	//	SimpleDateFormat dateFormat = new SimpleDateFormat("2014/06/18");
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
	//	String strDate = dateFormat.format(Calendar.getInstance().getTime());
		
//		model.addAttribute("getDailyCountForOrder", sttService.getDailyCountForOrder(strDate));
		model.addAttribute("getOrderCount", sttService.getOrderCount());
		int getCustomerCount=sttService.getCustomerCount();
		int getDCustomerCount=sttService.getDCustomerCount();
		int getCustomerResCount=getCustomerCount-getDCustomerCount;
		model.addAttribute("getCustomerResCount", getCustomerResCount);
		model.addAttribute("getDailyCountForMenu", sttService.getDailyCountForMenu());
		
		return "mng/statistics/dailyReport";
	}
	/* 판매분석 */
	@RequestMapping(value="orderReport.do")
	public String orderReport(Model model){
		return "mng/statistics/orderReport";
	}
	/* 메뉴분석 */
	@RequestMapping(value="menuReport.do")
	public String rsvReport(Model model){
		return "mng/statistics/menuReport";
	}
	/* 매출분석 */
	@RequestMapping(value="salesReport.do")
	public String salesReport(Model model){
		return "mng/statistics/salesReport";
	}
	/* 고객분석 */
	@RequestMapping(value="memberReport.do")
	public String memberReport(Model model){
		return "mng/statistics/memberReport";
	}
	
	
}
