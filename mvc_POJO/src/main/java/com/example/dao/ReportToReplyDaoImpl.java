package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.ReportToReply;

@Component
public class ReportToReplyDaoImpl implements ReportToReplyDao {
	
	private static Logger logger = LoggerFactory.getLogger(ReportToReplyDaoImpl.class);
	
	private final String REPORT_TO_REPLY_MAP = "pojo.web.dao.ReportToReplyMapper.";

	@Override
	public List<ReportToReply> selectAllReportToReply(SqlSessionTemplate template) {
		String stmt = REPORT_TO_REPLY_MAP + "selectAllReportToReply";
		return template.selectList(stmt);
	}

	@Override
	public ReportToReply selectByReportToReply(SqlSessionTemplate template, int reportReplyNo) {
		String stmt = REPORT_TO_REPLY_MAP + "selectByReportReplyNo";
		return template.selectOne(stmt, reportReplyNo);
	}

	@Override
	public int insertReportToReply(SqlSessionTemplate template, ReportToReply reportToReply) {
		String stmt = REPORT_TO_REPLY_MAP + "insertReportToReply";
		return template.update(stmt, reportToReply);
	}

	@Override
	public int updateReportToReply(SqlSessionTemplate template, ReportToReply reportToReply) {
		String stmt = REPORT_TO_REPLY_MAP + "updateReportToReply";
		return template.update(stmt, reportToReply);
	}

	@Override
	public int deleteReportToReply(SqlSessionTemplate template, int reportReplyNo) {
		String stmt = REPORT_TO_REPLY_MAP + "deleteReportToReply";
		return template.update(stmt, reportReplyNo);
	}

}
