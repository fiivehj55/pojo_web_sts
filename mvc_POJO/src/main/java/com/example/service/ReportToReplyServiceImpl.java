package com.example.service;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReportToReplyDao;
import com.example.dto.ReportToReply;

@Component
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
	public List<ReportToReply> selectByRtreportNo(int reportNo) {
		List<ReportToReply> list = rtrdao.selectByRtreportNo(template, reportNo);
		return list;
	}
	
	@Transactional
	@Override
	public ReportToReply selectByRtrNo(int reportReplyNo) {
		ReportToReply list = rtrdao.selectByReportToReply(template, reportReplyNo);
		return list;
	}

	@Transactional
	@Override
	public int insertRtr(ReportToReply reportToReply) {
		int result = 0;
		result = rtrdao.insertReportToReply(template, reportToReply);
		return result;
	}

	@Transactional
	@Override
	public int updateRtr(ReportToReply reportToReply) {
		int result = 0;
		result = rtrdao.updateReportToReply(template, reportToReply);
		return result;
	}

	@Transactional
	@Override
	public int deleteRtr(int reportReplyNo) {
		int result = 0;
		result = rtrdao.deleteReportToReply(template, reportReplyNo);
		return result;
	}

	@Override
	public List<ReportToReply> searchRtrPaging(Integer page) {
		List<ReportToReply> result = rtrdao.rtrPaging(template, page);
		return null;
	}
	
}
