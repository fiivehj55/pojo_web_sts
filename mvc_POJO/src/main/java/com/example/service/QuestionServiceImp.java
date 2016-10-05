package com.example.service;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.QuestionDao;
import com.example.dto.Question;



@Component
public class QuestionServiceImp implements QuestionService {
	
	static Logger logger = LoggerFactory.getLogger(QuestionServiceImp.class);

	@Autowired
	QuestionDao dao;
	@Autowired
	SqlSessionTemplate template;
	@Override
	public List<Question> selectById(int questNo) {
		List<Question> question = null;
		return question;
	}

	@Override
	public int add(Question question) {
		int result = 0;
		return result;
	}

	@Override
	public int delete(int questNo) {
		int result = 0;
		return result;
	}
	
	
}
