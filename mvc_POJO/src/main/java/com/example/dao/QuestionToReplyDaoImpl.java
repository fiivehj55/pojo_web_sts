package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.QuestionToReply;
import com.example.dto.ReportToReply;

@Component
public class QuestionToReplyDaoImpl implements QuestionToReplyDao {
	
	private static Logger logger = LoggerFactory.getLogger(QuestionToReplyDaoImpl.class);
	
	private final String QUESTION_TO_REPLY_MAP = "pojo.web.dao.QuestionToReplyMapper.";

	@Override
	public List<QuestionToReply> selectAllQuestionToReply(SqlSessionTemplate template) {
		String stmt = QUESTION_TO_REPLY_MAP + "selectAllQtr";
		return template.selectList(stmt);
	}

	@Override
	public QuestionToReply selectByQuestionToReply(SqlSessionTemplate template, int questReplyNo) {
		String stmt = QUESTION_TO_REPLY_MAP + "selectByQrNo";
		return template.selectOne(stmt, questReplyNo);
	}

	@Override
	public int insertQuestToReply(SqlSessionTemplate template, QuestionToReply questToReply) {
		String stmt = QUESTION_TO_REPLY_MAP + "insertQtr";
		return template.update(stmt, questToReply);
	}

	@Override
	public int updateQuestToReply(SqlSessionTemplate template, QuestionToReply questToReply) {
		String stmt = QUESTION_TO_REPLY_MAP + "updateQtr";
		return template.update(stmt, questToReply);
	}

	@Override
	public int deleteQuestToReply(SqlSessionTemplate template, int questReplyNo) {
		String stmt = QUESTION_TO_REPLY_MAP + "deleteQtr";
		return template.update(stmt, questReplyNo);
	}

	@Override
	public List<QuestionToReply> selectByQtquestNo(SqlSessionTemplate template, int questNo) {
		String stmt = QUESTION_TO_REPLY_MAP + "selectByQno";
		return template.selectList(stmt, questNo);
	}

	@Override
	public List<QuestionToReply> qtrPaging(SqlSessionTemplate template, int page) {
		String stmt = QUESTION_TO_REPLY_MAP + "qtrPaging";
		Map<String, Object> map = new HashMap<>();
		map.put("low",(page-1)*6+1);
		map.put("high",page*6);
		return template.selectList(stmt,map);
	}

}
