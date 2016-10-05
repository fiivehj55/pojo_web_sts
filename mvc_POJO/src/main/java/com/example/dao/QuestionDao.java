package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.Question;

public interface QuestionDao {
	
	List<Question> selectAllQuestion(SqlSessionTemplate template);
	
	Question selectByQuestNo(SqlSessionTemplate template, int questNo);
	
	int insertQuestion(SqlSessionTemplate template, Question question);
	
	int updateQuestion(SqlSessionTemplate template, Question question);
	
	int deleteQuestion(SqlSessionTemplate template, int questNo);
	
}
