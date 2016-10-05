package com.example.dao;

import java.util.List;
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

}
