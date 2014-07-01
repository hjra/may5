
package net.may5.service;

import net.may5.dao.EvaluationMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("evaluationService")
public class EvaluationServiceImpl implements EvaluationService {

	@Autowired
	private EvaluationMapper evaluationMapper;
	
}

