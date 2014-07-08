package net.may5.service;

import java.util.List;
import java.util.Map;

import net.may5.dto.QnA;

public interface QnAService {

	public List<QnA> qnaGetList();
	public List<QnA> qnaGetList2();
	void insertQnA(QnA qna);
	QnA getQnA(int boardCode);
	void updateQnA(QnA qna);
	void deleteQnA(int boardCode);
	QnA qnaGetContents(int boardCode);

	void writeProc(String boardTitle, String postContents, String postPassword,
			int cstCode);
}
