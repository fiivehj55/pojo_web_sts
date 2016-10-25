package com.example.service;

import java.util.List;

import com.example.dto.QuestionToReply;

public interface QuestionToReplyService {
	
	List<QuestionToReply> selectAllQtr();
	
	List<QuestionToReply> selectByQtreportNo(int questNo);
	
	QuestionToReply selectByQtrNo(int questReplyNo);
	
	int insertQtr(QuestionToReply questToReply);
	
	int updateQtr(QuestionToReply questToReply);
	
	int deleteQtr(int questReplyNo);
	
	List<QuestionToReply> searchQtrPaging(Integer page);
}
