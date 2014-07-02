package net.may5.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	/** 고객페이지↓ */
	/* 고객페이지로 이동 */
	@RequestMapping("homeImage.do")
	public String homeImage(Model model, HttpServletRequest request) {
		Customer cstLogin = (Customer) request.getSession().getAttribute("cstLogin");
		model.addAttribute("cstLogin", cstLogin);
		model.addAttribute("count", customerService.getAllCustomerCount());
		return "cst/home/homeImage";
	}
	
	/* 회원가입 동의폼으로 이동 */
	@RequestMapping("termsForm.do")
	public String termsForm(Model model){
		return "cst/membership/termsForm";
	}
	
	/* 회원가입 입력폼으로 이동 */
	@RequestMapping(value="joinForm.do", method=RequestMethod.POST)
	public String joinForm(@RequestParam String cstEmailAgreement, Model model){
		Customer customer = new Customer();
		model.addAttribute("cstEmailAgreement", cstEmailAgreement);
		model.addAttribute("customer", customer);
		model.addAttribute("zip", customerService.firstSearchZip());
		return "cst/membership/joinForm";
	}
	
	/* 회원가입 성공화면으로 이동 */
	@RequestMapping(value="joinOk.do", method=RequestMethod.POST)
	public String joinProcess(@RequestParam String cstEmailAgreement, @RequestParam String cstName, 
			@ModelAttribute("customer") Customer customer, Zip zip, BindingResult result){
		customer.setCstEmailAgreement(cstEmailAgreement);
		System.out.println("insert Customer");
		customerService.insertJoinCst(customer);
		return "cst/membership/joinOk";
	}
	
	/* 로그인 입력폼으로 이동 */
	@RequestMapping("cstLoginForm.do")
	public String loginForm(Model model){
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "cst/membership/loginForm";
	}
	
	/* 회원 로그인 성공화면으로 이동 */
	/* 비회원 로그인 성공화면으로 이동 */
	@RequestMapping(value="cstLoginProcess.do", method=RequestMethod.POST)
	public String loginProcess(Model model, Customer customer,
			HttpServletRequest request, HttpSession session){
		
		session = request.getSession();
		
		Customer cstLogin = customerService.loginCst(customer);
		if(cstLogin != null){
			if(!session.isNew()){
				session = request.getSession(true);
			}
			session.setAttribute("cstLogin", cstLogin);
		//	model.addAttribute("cstLogin", cstLogin);
			return "cst/membership/loginOk";
		}else{
			request.setAttribute("errMsg", "아이디 또는 비밀번호를 다시 확인하세요.<br>"
					+ "C#에 등록되지 않은 아이디이거나,<br>아이디 또는 비밀번호를 잘못 입력하셨습니다.");
			return "cst/membership/loginForm";			
		}
	}
	
	/* 로그아웃 */
	@RequestMapping("cstLogoutProcess.do")
	public String logoutProcess(HttpSession session){
		System.out.println("로그아웃");
		session.removeAttribute("cstLogin");
		session.invalidate();
		return "cst/home/homeImage";
	}
		
	/* 회원정보 찾기폼으로 이동 */
	@RequestMapping("scInfoForm.do")
	public String scInfoForm(Model model){
		return "cst/membership/scInfoForm";
	}
	
	/* 아이디찾기 성공화면으로 이동 */
	@RequestMapping("scIdProcess.do")
	public String scIdProcess(Model model){
		
		return "cst/membership/scIdOk";
	}
	
	/* 비번찾기 입력폼으로 이동 */
	@RequestMapping(value="scPasswordProcess.do", method=RequestMethod.POST)
	public String scPasswordProcess(Model model){
		
		return "cst/membership/scPasswordForm";
	}
	
	/* 비번찾기 변경폼으로 이동 */
	@RequestMapping(value="scPasswordModifyForm.do", method=RequestMethod.POST)
	public String scPasswordModifyForm(Model model){
		
		return "cst/membership/scPasswordModifyForm";
	}
	
	/* 비로그인 비번변경 성공화면으로 이동 */
	@RequestMapping(value="scPasswordModifyProcess.do", method=RequestMethod.POST)
	public String scPasswordModifyProcess(Model model){
		
		return "cst/membership/scPasswordModifyOk";
	}
	
	/* 마이페이지 메인화면으로 이동 */
	@RequestMapping("myPage.do")
	public String myPage(Model model){
		return "cst/membership/myPage";
	}
	
	/* 회원정보수정 입력폼으로 이동 */
	@RequestMapping("modifyInfoForm.do")
	public String modifyInfoForm(Model model){
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "cst/membership/modifyInfoForm";
	}
	
	@RequestMapping("modifyInfoProcess.do")
	public String modifyInfoProcess(Model model){
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "cst/membership/modifyInfoForm";
	}
	
	/* 회원탈퇴 입력폼으로 이동 */
	@RequestMapping("deleteMemberInfoForm.do")
	public String deleteMemberInfoForm(Model model){
		return "cst/membership/deleteMemberInfoForm";
	}
	
	/* 회원탈퇴 인증폼으로 이동 */
	@RequestMapping(value="deleteMemberVerifyForm.do", method=RequestMethod.POST)
	public String deleteMemberVerifyForm(Model model){
		
		return "cst/membership/deleteMemberVerifyForm";
	}
	
	/* 회원탈퇴 성공화면으로 이동 */
	@RequestMapping(value="/deleteMemberProcess.do", method=RequestMethod.POST)
	public String deleteMemberProcess(Model model){
		
		return "cst/membership/deleteMemberOk";
	}
	
	/* 달력기능 화면으로 이동 */
	@RequestMapping("calendar.do")
	public String calendar(Model model){
		return "cst/membership/calendar";
	}

	
	
	
	/*  */
	
	
	
	/** 관리자페이지↓ */
	/* 전체고객정보 화면으로 이동 */
	@RequestMapping("allMemberInfoForm.do")
	public String allMemberInfoForm(Model model){
		model.addAttribute("customer", customerService.selectAllCstInfo());
		return "mng/cstInfo/allMemberInfoForm";
	}
	
	/* VIP LIST 화면으로 이동 */
	@RequestMapping("vipListForm.do")
	public String vipListForm(Model model){
		model.addAttribute("customer", customerService.selectVIPCstInfo());
		return "mng/cstInfo/vipListForm";
	}
	
	/* 관심고객리스트 화면으로 이동 */
	@RequestMapping("blackListForm.do")
	public String blackListForm(Model model){
		model.addAttribute("customer", customerService.selectBlackCstInfo());
		return "mng/cstInfo/blackListForm";
	}
	
}

