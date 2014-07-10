package net.may5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.may5.dao.QnAMapper;
import net.may5.dto.QnA;


@Service("qnaService")
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnAMapper qnamapper;
	
	@Override
	public void insertQnA(QnA qna) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public QnA getQnA(int boardCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateQnA(QnA qna) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<QnA> qnaGetList() {
		// TODO Auto-generated method stub
		return qnamapper.qnaGetList();
	}

	@Override
	public List<QnA> qnaGetList2() {
		// TODO Auto-generated method stub
		return qnamapper.qnaGetList2();
	}

	@Override
	public QnA qnaGetContents(int boardCode) {
		return qnamapper.qnaGetContents(boardCode);
	}

	@Override
	public void writeProc(String boardTitle, String postContents, String postPassword, int cstCode) {
		 qnamapper.writeProc(boardTitle, postContents, postPassword, cstCode);
	}

	@Override
	public void deleteBoard(int boardCode) {
		qnamapper.deleteBoard(boardCode);
	}

	@Override
	public void updateBoard(QnA qna) {
		qnamapper.updateBoard(qna);
		
	}

	@Override
	public QnA getBoard(int boardCode) {
		
		return qnamapper.getBoard(boardCode);
	}

}
