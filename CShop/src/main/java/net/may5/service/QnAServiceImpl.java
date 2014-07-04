package net.may5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.may5.dao.QnAMapper;
import net.may5.dto.QnA;

@Service("QnAService")
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnAMapper qnAMapper;
	
	@Override
	public List<QnA> getQnaList() {
		
		return qnAMapper.getQnaList();
	}

}
