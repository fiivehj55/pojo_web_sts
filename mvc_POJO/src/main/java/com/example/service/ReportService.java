package com.example.service;

import java.util.List;

import com.example.dto.Report;

//신고게시판
public interface ReportService {
	
	List<Report> selectAllReport();
	
	Report selectByReportNo(int reportNo);
	
	int insertReport(Report report);
	
	int updateReport(Report report);
	
	int deleteReport(int reportNo);
	
	List<Report> selectReportPage(int page);
}
