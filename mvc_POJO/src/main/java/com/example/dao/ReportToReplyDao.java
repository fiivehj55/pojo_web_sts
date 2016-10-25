package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.QuestionToReply;
import com.example.dto.ReportToReply;

public interface ReportToReplyDao {
	
	List<ReportToReply> selectAllReportToReply(SqlSessionTemplate template);
	
	List<ReportToReply> selectByRtreportNo(SqlSessionTemplate template, int reportNo);
	
	ReportToReply selectByReportToReply(SqlSessionTemplate template, int reportReplyNo);
	
	int insertReportToReply(SqlSessionTemplate template, ReportToReply reportToReply);
	
	int updateReportToReply(SqlSessionTemplate template, ReportToReply reportToReply);
	
	int deleteReportToReply(SqlSessionTemplate template, int reportReplyNo);

	List<ReportToReply> rtrPaging(SqlSessionTemplate template, int page);
}
