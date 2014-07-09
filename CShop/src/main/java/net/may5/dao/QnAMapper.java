package net.may5.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.may5.dto.QnA;

public interface QnAMapper {

	public List<QnA> qnaGetList();
	public List<QnA> qnaGetList2();
	public QnA qnaGetContents(int boardCode);
	public void writeProc(@Param("boardTitle") String  boardTitle,
			@Param("postContents") String  postContents, @Param("postPassword") String postPassword  ,
			@Param("cstCode")  int cstCode );
	void deleteBoard(int boardCode);//게시글삭제
	void updateBoard(QnA qna); 
	QnA getBoard(int boardCode);
}
