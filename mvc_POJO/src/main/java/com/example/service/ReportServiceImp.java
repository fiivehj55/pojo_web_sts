package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.ReportDao;
import com.example.dto.Report;




@Component
public class ReportServiceImp implements ReportService {
	
	static Logger logger = LoggerFactory.getLogger(ReportServiceImp.class);


	@Autowired
	ReportDao dao;
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public List<Report> selectAllReport() {
		List<Report> report = null;
	
		return report;
	}

	@Override
	public Report selectByReportNo(int reportNo) {
	//	try (SqlSession template = DBUtil.getInstance().getSession()) {
		
		Report report = dao.selectByReport(template, reportNo);
		return report;
	/*		if(report != null){
				return report;
			}else{
				throw new NumberFormatException();
			}
		}*/
	}

	@Override
	public int insertReport(Report report) {
		int result = 0;
	return result;
	}

	@Override
	public int updateReport(Report report) {
		int result = 0;
	return result;
	}

	@Override
	public int deleteReport(int reportNo) {
		int result = 0;
	return result;
	}
	
}
