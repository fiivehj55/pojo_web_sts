package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.House;
import com.example.dto.QuestionToReply;
import com.example.dto.ReportToReply;

public interface QuestionToReplyDao {
	
	List<QuestionToReply> selectAllQuestionToReply(SqlSessionTemplate template);
	
	List<QuestionToReply> selectByQtquestNo(SqlSessionTemplate template, int questNo);
	
	QuestionToReply selectByQuestionToReply(SqlSessionTemplate template, int questReplyNo);
	
	int insertQuestToReply(SqlSessionTemplate template, QuestionToReply questToReply);
	
	int updateQuestToReply(SqlSessionTemplate template, QuestionToReply QuestionToReply);
	
	int deleteQuestToReply(SqlSessionTemplate template, int questReplyNo);
	
	List<QuestionToReply> qtrPaging(SqlSessionTemplate template, int page);

}
