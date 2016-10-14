package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.Question;
import com.example.dto.Report;


public interface ReportDao {
	
	List<Report> selectAllReport(SqlSessionTemplate template);
	
	Report selectByReport(SqlSessionTemplate template, int reportNo);
	
	int insertReport(SqlSessionTemplate template, Report report);
	
	int updateReport(SqlSessionTemplate template, Report report);
	
	int deleteReport(SqlSessionTemplate template, int reportNo);
	
	List<Report> selectPaging(SqlSessionTemplate template,int page);
	
}
