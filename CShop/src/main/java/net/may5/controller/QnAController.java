package net.may5.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.may5.service.QnAService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnAController {
	
	@Autowired
	private QnAService qnaService;
	
	
	//로그인후 MYC#에서 QnA게시판으로 이동하는 컨트롤러
	@RequestMapping(value= "board.do", method=RequestMethod.GET)
	public String qnaGetList(
			Model model){
		model.addAttribute("qnaList2", qnaService.qnaGetList2());
		return "cst/membership/board";
		
	}

	
	public String cstQnABoard(Model model) {  
		return "cst/membership/board";
	}
	
	/* QnA 게시글 암호 확인 페이지 이동*/
	@RequestMapping("boardCheck.do") 
	public String boardCheck(Model model) {
		return "cst/membership/boardCheck";
	}
	/*QnA 게시글 수정페이지 이동*/
	@RequestMapping(value="boardEdit.do", method=RequestMethod.POST)
	public String boardEdit(Model model){
		return "cst/membership/boardEdit";
	}
	/* QnA 게시판 글쓰기 페이지 이동*/
	@RequestMapping("boardWriteForm.do") 
	public String boardWriteForm(Model model) {
		return "cst/membership/boardWriteForm";
	}

	
	
	
	
	/*관리자페이지경로설정*/
	
	@RequestMapping("managerQnA.do") //여기에서 board.do가 입력되면 이라는 뜻인가?
	public String managerQnA(Model model) {  
		return "mng/cstInfo/managerQnA";
	}
	@RequestMapping(value="managerEditQnA.do")
	public String managerEditQnA(Model model){
		return "mng/cstInfo/managerEditQnA";
	}
	
}