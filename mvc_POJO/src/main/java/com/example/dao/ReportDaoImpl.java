package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import com.example.dto.Report;


@Component
public class ReportDaoImpl implements ReportDao {
	
	static Logger logger = LoggerFactory.getLogger(ReportDaoImpl.class);


	private final String REPORT_MAP = "pojo.web.dao.ReportMapper.";

	@Override
	public List<Report> selectAllReport(SqlSessionTemplate template) {
		String stmt = REPORT_MAP + "selectAllReport";
		return template.selectList(stmt);
	}

	@Override
	public Report selectByReport(SqlSessionTemplate template, int reportNo) {
		String stmt = REPORT_MAP + "selectByReortNo";
		return template.selectOne(stmt, reportNo);
	}

	@Override
	public int insertReport(SqlSessionTemplate template, Report report) {
		String stmt = REPORT_MAP + "insertReport";
		return template.update(stmt, report);
	}

	@Override
	public int updateReport(SqlSessionTemplate template, Report report) {
		String stmt = REPORT_MAP + "updateReport";
		return template.update(stmt, report);
	}

	@Override
	public int deleteReport(SqlSessionTemplate template, int reportNo) {
		String stmt = REPORT_MAP + "deleteReport";
		return template.update(stmt, reportNo);
	}

}
