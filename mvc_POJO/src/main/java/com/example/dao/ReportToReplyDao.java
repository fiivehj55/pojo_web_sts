package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.ReportToReply;

public interface ReportToReplyDao {
	
	List<ReportToReply> selectAllReportToReply(SqlSessionTemplate template);
	
	List<ReportToReply> selectByReportReplyNo(SqlSessionTemplate template, int reportReplyNo);
	
	ReportToReply selectByReportToReply(SqlSessionTemplate template, int reportReplyNo);
	
	int insertReportToReply(SqlSessionTemplate template, ReportToReply reportToReply);
	
	int updateReportToReply(SqlSessionTemplate template, ReportToReply reportToReply);
	
	int deleteReportToReply(SqlSessionTemplate template, int reportReplyNo);

}
