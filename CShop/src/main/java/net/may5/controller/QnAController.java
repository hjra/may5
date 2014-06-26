package net.may5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnAController {
	//로그인후 MYC#에서 QnA게시판으로 이동하는 컨트롤러
	@RequestMapping("cst/membership/board.do")
	public String cstQnABoard(Model model) {
		return "cst/membership/board";
	}
	
	@RequestMapping("cst/membership/boardCheck.do") 
	public String boardCheck(Model model) {
		return "cst/membership/boardCheck";
	}
	
	
}
