package net.may5.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.may5.dto.Customer;
import net.may5.dto.QnA;
import net.may5.service.QnAService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class QnAController {
	
	@Autowired
	private QnAService qnaService;
	
	
	//로그인후 MYC#에서 QnA게시판으로 이동하는 컨트롤러
	@RequestMapping(value= "board.do", method=RequestMethod.GET)
	public String qnaGetList(Model model){
		model.addAttribute("qnaList2", qnaService.qnaGetList2());
		return "cst/membership/board";
		
	}

	
	public String cstQnABoard(Model model) {  
		return "cst/membership/board";
	}
	
	/* QnA 게시글 암호 확인 페이지 이동*/
	@RequestMapping(value = "boardCheck.do", method=RequestMethod.GET) 
	public String boardCheck(Model model, @RequestParam int boardCode)/*//보드에서 보낸 보드코드를
	받아준다*/	
	{
		model.addAttribute("boardCode", boardCode);
		System.out.println("boardcheck로 이동");
		return "cst/membership/boardCheck";
	}
	/*QnA (게시글 암호확인 페이지에서)게시글 수정페이지 이동*/
	@RequestMapping(value="boardEdit.do", method=RequestMethod.POST)
	public String boardEdit(Model model, @RequestParam int boardCode){
		System.out.println("boardCode: "+boardCode);
		QnA board =	qnaService.qnaGetContents(boardCode);
		model.addAttribute("board", board);		
		return "cst/membership/boardEdit";
	}
	/* QnA 게시판 글쓰기 페이지 이동*/
	@RequestMapping("boardWriteForm.do")
	public String boardWriteForm(Map<String, String> paramap, ModelMap model){
		return "cst/membership/boardWriteForm";
		
	}
	
	/*게시글을 DB에 올리는 controller*/
	@RequestMapping("writeProc.do") 
	public String writeProc(HttpServletRequest  request, HttpSession  session,  ModelMap model) 
			throws Throwable{		

		//form에서 넘어오는 값 찍기 paramMap 안에 form에서 넘어오는 값이 있음
		System.out.println("title = " + request.getParameter("boardTitle"));
		System.out.println("content = " + request.getParameter("postContents"));
		System.out.println("password = " + request.getParameter("postPassword"));
		System.out.println("boardDate = " + request.getParameter("boardDate"));
		Customer cstLogin = (Customer)session.getAttribute("cstLogin");
		
		int   cstCode=cstLogin.getCstCode();
		//저장하기 위하여 paramMap을 넘긴다.
	 qnaService.writeProc(request.getParameter("boardTitle"), 
				request.getParameter("postContents"), 
				request.getParameter("postPassword"),
				cstCode);

		System.out.println(" 입력되었습니다/");

		//처리 redirect
		return "redirect:/board.do";
		
	}
	//게시글 삭제
	@RequestMapping("boardDelete.do")
	public String BoardDelete(Model model, int boardCode) {
		System.out.println("BoardController -> boardDelete.do -> /boardList.jsp");
		System.out.println(boardCode);
		qnaService.deleteBoard(boardCode);
		model.addAttribute("qnaList2", qnaService.qnaGetList2());
		return "cst/membership/board";
	}
	
	
	//게시글 수정폼으로 이동
	@RequestMapping(value = "boardUpdateForm.do", method = RequestMethod.POST)
	public String BoardUpdateForm(Model model, int boardCode) {
		System.out.println(boardCode+"보드번호입니다.");
		QnA qna = qnaService.getBoard(boardCode);
		System.out.println(qna+"제대로 찍힙니까???");
		model.addAttribute("QnA", qna);
		return "cst/membership/boardUpdateForm";
	}
	
	
	
	//게시글 수정
	@RequestMapping(value = "boardUpdate.do", method = RequestMethod.POST)
	public String BoardUpdate(HttpServletRequest request, Model model) {
		
		QnA qna = new QnA();
		qna.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		qna.setBoardTitle(request.getParameter("boardTitle"));
		qna.setPostContents(request.getParameter("postContents"));
		qnaService.updateBoard(qna);
		model.addAttribute("qnaList2", qnaService.qnaGetList2());
		return "cst/membership/board";
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