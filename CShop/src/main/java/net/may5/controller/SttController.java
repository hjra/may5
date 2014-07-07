package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SttController {
/* 일일현황 */
	@RequestMapping(value="dailyReport.do")
	public String dailyReport(Model model){
		return "mng/statistics/dailyReport";
	}
	/* 판매분석 */
	@RequestMapping(value="orderReport.do")
	public String orderReport(Model model){
		return "mng/statistics/orderReport";
	}
	/* 메뉴분석 */
	@RequestMapping(value="rsvReport.do")
	public String rsvReport(Model model){
		return "mng/statistics/rsvReport";
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
