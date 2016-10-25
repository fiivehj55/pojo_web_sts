package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.QuestionToReplyDao;
import com.example.dto.QuestionToReply;
import com.example.dto.ReportToReply;

@Component
public class QuestionToReplyServiceImpl implements QuestionToReplyService {
	
	@Autowired
	QuestionToReplyDao qtrdao;
	
	@Autowired
	SqlSessionTemplate template;

	@Transactional
	@Override
	public List<QuestionToReply> selectAllQtr() {
		List<QuestionToReply> list = null;
		list = qtrdao.selectAllQuestionToReply(template);
		return list;
	}

	@Transactional
	@Override
	public List<QuestionToReply> selectByQtreportNo(int questNo) {
		List<QuestionToReply> list = qtrdao.selectByQtquestNo(template, questNo);
		return list;
	}
	
	@Transactional
	@Override
	public QuestionToReply selectByQtrNo(int questReplyNo) {
		QuestionToReply list = qtrdao.selectByQuestionToReply(template, questReplyNo);
		return list;
	}

	@Transactional
	@Override
	public int insertQtr(QuestionToReply questToReply) {
		int result = 0;
		result = qtrdao.insertQuestToReply(template, questToReply);
		return result;
	}

	@Transactional
	@Override
	public int updateQtr(QuestionToReply questToReply) {
		int result = 0;
		result = qtrdao.updateQuestToReply(template, questToReply);
		return result;
	}

	@Transactional
	@Override
	public int deleteQtr(int questReplyNo) {
		int result = 0;
		result = qtrdao.deleteQuestToReply(template, questReplyNo);
		return result;
	}

	@Override
	public List<QuestionToReply> searchQtrPaging(Integer page) {
		List<QuestionToReply> result = qtrdao.qtrPaging(template, page);
		return result;
	}
	
}
