package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.Question;


@Component
public class QuestionDaoImpl implements QuestionDao {
	
	static Logger logger = LoggerFactory.getLogger(QuestionDaoImpl.class);


	
	private final String QUESTION_MAP = "pojo.web.dao.QuestionMapper.";

	@Override
	public List<Question> selectAllQuestion(SqlSessionTemplate template) {
		String stmt = QUESTION_MAP + "selectAllQuestion";
		return template.selectList(stmt);
	}

	@Override
	public Question selectByQuestNo(SqlSessionTemplate template, int questNo) {
		String stmt = QUESTION_MAP + "selectByQuestNo";
		return template.selectOne(stmt, questNo);
	}
	@Override
	public List<Question> selectByMemId(SqlSessionTemplate template, String memberId) {
		String stmt = QUESTION_MAP + "selectByMemId";
		return template.selectList(stmt, memberId);
	}
	@Override
	public int insertQuestion(SqlSessionTemplate template, Question question) {
		String stmt = QUESTION_MAP + "insertQuestion";
		return template.update(stmt, question);
	}

	@Override
	public int updateQuestion(SqlSessionTemplate template, Question question) {
		String stmt = QUESTION_MAP + "updateQuestion";
		return template.update(stmt, question);
	}

	@Override
	public int deleteQuestion(SqlSessionTemplate template, int questNo) {
		String stmt = QUESTION_MAP + "deleteQuestion";
		return template.update(stmt, questNo);
	}

	@Override
	public List<Question> selectPaging(SqlSessionTemplate template,int page, String id) {
		String stmt = QUESTION_MAP + "questPaging";
		Map<String, Object> map = new HashMap<>();
		map.put("id",id);
		map.put("low",(page-1)*5+1);
		map.put("high",page*5);
		
		return template.selectList(stmt,map);
	}

	@Override
	public List<Question> selectPaging1(SqlSessionTemplate template, int page) {
		String stmt = QUESTION_MAP + "questPaging1";
		Map<String, Object> map = new HashMap<>();
		map.put("low",(page-1)*5+1);
		map.put("high",page*5);
		return template.selectList(stmt,map);
	}

}
