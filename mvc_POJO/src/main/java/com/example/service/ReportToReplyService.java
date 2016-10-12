package com.example.service;

import java.util.List;

import com.example.dto.ReportToReply;

public interface ReportToReplyService {
	
	List<ReportToReply> selectAllRtr();
	
	List<ReportToReply> selectByReportReplyNo(int reportReplyNo);
	
	/*ReportToReply selectByRtrNo(int reportReplyNo);*/
	
	int insertRtr(ReportToReply ReportToReply);
	
	int updateRtr(ReportToReply ReportToReply);
	
	int deleteRtr(int reportReplyNo);
}
