package com.example.service;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.QuestionDao;
import com.example.dto.Question;



@Component
public class QuestionServiceImp implements QuestionService {
	
	static Logger logger = LoggerFactory.getLogger(QuestionServiceImp.class);

	@Autowired
	QuestionDao dao;
	@Autowired
	SqlSessionTemplate template;
	
	@Transactional
	@Override
	public List<Question> selectById(int questNo) {
		List<Question> question = null;
		question = dao.selectAllQuestion(template);
		
		return question;
	}

	@Transactional
	@Override
	public int add(Question question) {
		int result = 0;
		result = dao.insertQuestion(template, question);
		
		return result;
	}

	@Transactional
	@Override
	public int delete(int questNo) {
		int result = 0;
		result = dao.deleteQuestion(template, questNo);
		
		return result;
	}
	
	
}
