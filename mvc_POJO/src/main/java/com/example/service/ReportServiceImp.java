package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReportDao;
import com.example.dto.Report;

@Component
public class ReportServiceImp implements ReportService {

	static Logger logger = LoggerFactory.getLogger(ReportServiceImp.class);

	@Autowired
	ReportDao dao;
	@Autowired
	SqlSessionTemplate template;

	@Transactional
	@Override
	public List<Report> selectAllReport() {
		List<Report> report = null;
		report = dao.selectAllReport(template);

		return report;
	}

	@Transactional
	@Override
	public Report selectByReportNo(int reportNo) {

		Report report = dao.selectByReport(template, reportNo);

		return report;
	}

	@Transactional
	@Override
	public int insertReport(Report report) {
		int result = 0;
		result = dao.insertReport(template, report);

		return result;
	}

	@Transactional
	@Override
	public int updateReport(Report report) {
		int result = 0;
		result = dao.updateReport(template, report);

		return result;
	}

	@Transactional
	@Override
	public int deleteReport(int reportNo) {
		int result = 0;
		result = dao.deleteReport(template, reportNo);

		return result;
	}

	@Transactional
	@Override
	public List<Report> selectReportPage(int page) {
		List<Report> report = null;
		report = dao.selectPaging(template, page);
		return report;
	}
}
