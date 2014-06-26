package net.may5.controller;

import net.may5.dto.Customer;
import net.may5.dto.Zip;
import net.may5.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	/** 고객페이지↓ */
	/* 고객페이지로 이동 */
	@RequestMapping(value = "/cst/home/homeImage.do")
	public String homeImage(Model model) {
		model.addAttribute("count", customerService.getAllCustomerCount());
		return "cst/home/homeImage";
	}
	
	/* 회원가입 동의폼으로 이동 */
	@RequestMapping("cst/membership/termsForm.do")
	public String termsForm(Model model){
		return "cst/membership/termsForm";
	}
	
	/* 회원가입 입력폼으로 이동 */
	@RequestMapping(value="cst/membership/joinForm.do"
			, method=RequestMethod.POST)
	public String joinForm(/*@RequestParam String receiveMail,*/ Model model){
	//	이벤트메일수신 동의여부 가져가기
		return "cst/membership/joinForm";
	}
	
	/* 회원가입 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/joinOk.do", method=RequestMethod.POST)
	public String joinProcess(@ModelAttribute("customer") Customer customer,
			Zip zip, BindingResult result){
		System.out.println("insert Customer");
		customerService.insertJoinCst(customer);
		return "cst/membership/joinOk";
	}
	
	/* 로그인 입력폼으로 이동 */
	@RequestMapping("cst/membership/loginForm.do")
	public String loginForm(Model model){
		return "cst/membership/loginForm";
	}
	
	/* 회원 로그인 성공화면으로 이동 */
	/* 비회원 로그인 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/loginProcess.do"
			, method=RequestMethod.POST)
	public String loginProcess(Model model){
		return "cst/membership/loginOk";
	}
		
	/* 회원정보 찾기폼으로 이동 */
	@RequestMapping("cst/membership/scInfoForm.do")
	public String scInfoForm(Model model){
		return "cst/membership/scInfoForm";
	}
	
	/* 아이디찾기 성공화면으로 이동 */
	@RequestMapping("cst/membership/scIdProcess.do")
	public String scIdProcess(Model model){
		
		return "cst/membership/scIdOk";
	}
	
	/* 비번찾기 입력폼으로 이동 */
	@RequestMapping(value="cst/membership/scPasswordProcess.do"
			, method=RequestMethod.POST)
	public String scPasswordProcess(Model model){
		
		return "cst/membership/scPasswordForm";
	}
	
	/* 비번찾기 변경폼으로 이동 */
	@RequestMapping(value="cst/membership/scPasswordModifyForm.do"
			, method=RequestMethod.POST)
	public String scPasswordModifyForm(Model model){
		
		return "cst/membership/scPasswordModifyForm";
	}
	
	/* 비로그인 비번변경 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/scPasswordModifyProcess.do"
			, method=RequestMethod.POST)
	public String scPasswordModifyProcess(Model model){
		
		return "cst/membership/scPasswordModifyOk";
	}
	
	/* 마이페이지 메인화면으로 이동 */
	@RequestMapping("cst/membership/myPage.do")
	public String myPage(Model model){
		return "cst/membership/myPage";
	}
	
	/* 회원정보수정 입력폼으로 이동 */
	@RequestMapping("cst/membership/modifyInfoForm.do")
	public String modifyInfoForm(Model model){
		return "cst/membership/modifyInfoForm";
	}
	
	/* 회원탈퇴 입력폼으로 이동 */
	@RequestMapping("cst/membership/deleteMemberInfoForm.do")
	public String deleteMemberInfoForm(Model model){
		return "cst/membership/deleteMemberInfoForm";
	}
	
	/* 회원탈퇴 인증폼으로 이동 */
	@RequestMapping(value="cst/membership/deleteMemberVerifyForm.do"
			, method=RequestMethod.POST)
	public String deleteMemberVerifyForm(Model model){
		
		return "cst/membership/deleteMemberVerifyForm";
	}
	
	/* 회원탈퇴 성공화면으로 이동 */
	@RequestMapping(value="cst/membership/deleteMemberProcess.do"
			, method=RequestMethod.POST)
	public String deleteMemberProcess(Model model){
		
		return "cst/membership/deleteMemberOk";
	}
	
	/* 달력기능 화면으로 이동 */
	@RequestMapping("cst/membership/calendar.do")
	public String calendar(Model model){
		return "cst/membership/calendar";
	}

	
	
	
	/*  */
	
	
	/** 관리자페이지↓ */
	/* 전체고객정보 화면으로 이동 */
	@RequestMapping("mng/cstInfo/allMemberInfoForm.do")
	public String allMemberInfoForm(Model model){
		return "mng/cstInfo/allMemberInfoForm";
	}
	
	/* VIP LIST 화면으로 이동 */
	@RequestMapping("mng/cstInfo/vipListForm.do")
	public String vipListForm(Model model){
		return "mng/cstInfo/vipListForm";
	}
	
	/* 관심고객리스트 화면으로 이동 */
	@RequestMapping("mng/cstInfo/blackListForm.do")
	public String blackListForm(Model model){
		return "mng/cstInfo/blackListForm";
	}
	
}
