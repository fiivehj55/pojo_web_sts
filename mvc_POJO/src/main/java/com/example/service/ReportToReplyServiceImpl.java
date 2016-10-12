package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReportToReplyDao;
import com.example.dto.ReportToReply;

public class ReportToReplyServiceImpl implements ReportToReplyService {
	
	@Autowired
	ReportToReplyDao rtrdao;
	
	@Autowired
	SqlSessionTemplate template;

	@Transactional
	@Override
	public List<ReportToReply> selectAllRtr() {
		List<ReportToReply> list = null;
		list = rtrdao.selectAllReportToReply(template);
		return list;
	}

	@Transactional
	@Override
	public List<ReportToReply> selectByReportReplyNo(int reportReplyNo) {
		List<ReportToReply> list = rtrdao.selectByReportReplyNo(template, reportReplyNo);
		return list;
	}

	@Transactional
	@Override
	public int insertRtr(ReportToReply ReportToReply) {
		int result = 0;
		result = rtrdao.insertReportToReply(template, ReportToReply);
		return result;
	}

	@Transactional
	@Override
	public int updateRtr(ReportToReply ReportToReply) {
		int result = 0;
		result = rtrdao.updateReportToReply(template, ReportToReply);
		return result;
	}

	@Transactional
	@Override
	public int deleteRtr(int reportReplyNo) {
		int result = 0;
		result = rtrdao.deleteReportToReply(template, reportReplyNo);
		return result;
	}

}
