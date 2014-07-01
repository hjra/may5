package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnAController {
	//로그인후 MYC#에서 QnA게시판으로 이동하는 컨트롤러
	@RequestMapping("cst/membership/board.do") //여기에서 board.do가 입력되면 이라는 뜻인가?
	public String cstQnABoard(Model model) {  
		return "cst/membership/board";
	}
	/* QnA 게시글 암호 확인 페이지 이동*/
	@RequestMapping("cst/membership/boardCheck.do") 
	public String boardCheck(Model model) {
		return "cst/membership/boardCheck";
	}
	/*QnA 게시글 수정페이지 이동*/
	@RequestMapping(value="cst/membership/boardEdit.do", method=RequestMethod.POST)
	public String boardEdit(Model model){
		return "cst/membership/boardEdit";
	}
	/* QnA 게시판 글쓰기 페이지 이동*/
	@RequestMapping("cst/membership/boardWriteForm.do") 
	public String boardWriteForm(Model model) {
		return "cst/membership/boardWriteForm";
	}

	
	/*관리자페이지경로설정*/
	
	@RequestMapping("mng/cstInfo/managerQnA.do") //여기에서 board.do가 입력되면 이라는 뜻인가?
	public String managerQnA(Model model) {  
		return "mng/cstInfo/managerQnA";
	}
	@RequestMapping(value="mng/cstInfo/managerEditQnA.do")
	public String managerEditQnA(Model model){
		return "mng/cstInfo/managerEditQnA";
	}
	
}