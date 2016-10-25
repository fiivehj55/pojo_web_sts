package com.example.service;

import java.util.List;

import com.example.dto.ReportToReply;

public interface ReportToReplyService {
	
	List<ReportToReply> selectAllRtr();
	
	List<ReportToReply> selectByRtreportNo(int reportNo);
	
	ReportToReply selectByRtrNo(int reportReplyNo);
	
	int insertRtr(ReportToReply reportToReply);
	
	int updateRtr(ReportToReply reportToReply);
	
	int deleteRtr(int reportReplyNo);
	
	List<ReportToReply> searchRtrPaging(Integer page);
}
