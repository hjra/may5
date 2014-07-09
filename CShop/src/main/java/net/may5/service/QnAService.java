package net.may5.service;

import java.util.List;

import net.may5.dto.QnA;

public interface QnAService {

	public List<QnA> qnaGetList();
	public List<QnA> qnaGetList2();
	void insertQnA(QnA qna);
	QnA getQnA(int boardCode);
	void updateQnA(QnA qna);
	QnA qnaGetContents(int boardCode);
	void writeProc(String boardTitle, String postContents, String postPassword,int cstCode);
	void deleteBoard(int boardCode);//게시글삭제
	void updateBoard(QnA qna);//게시글 업데이트
	QnA getBoard(int boardCode);//수정할 게시글 가지고 와서 수정폼으로 넣어주기
}
