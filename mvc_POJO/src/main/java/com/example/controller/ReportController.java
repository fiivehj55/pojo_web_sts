package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dto.Member;
import com.example.dto.Reply;
import com.example.dto.Report;
import com.example.dto.ReportToReply;
import com.example.service.ReportService;
import com.example.service.ReportToReplyService;

@Controller
public class ReportController {
	private static Logger logger = LoggerFactory.getLogger(ReportController.class);

	@Autowired
	ReportService repservice;

	@Autowired
	ReportToReplyService rtservice;

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String table(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		List<Report> list = repservice.selectAllReport();
		model.addAttribute("Report", list);
		// view의 이름을 리턴.
		return "jsp/ReportList";
	}

	@RequestMapping(value = "/reportView", method = RequestMethod.GET)
	public String reportView(Model model, @RequestParam Integer reportNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		Report report = repservice.selectByReportNo(reportNo);
		List<ReportToReply> reportToReply = rtservice.selectByRtreportNo(reportNo);
		model.addAttribute("Report", report);
		model.addAttribute("rtr", reportToReply);
		model.addAttribute("reportNo", reportNo);

		// view의 이름을 리턴.
		return "jsp/ReportView";
	}

	@RequestMapping(value = "/ReportInsert", method = RequestMethod.GET)
	public String ReportInsert(Model model) {
		// view의 이름을 리턴.
		return "jsp/ReportInsert";
	}

	@RequestMapping(value = "/ReportInsert", method = RequestMethod.POST)
	public String ReportInsertPost(Model model, @RequestParam String category, @RequestParam String title,
			@RequestParam String content, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		Report report = new Report();
		report.setReportCategory(category);
		report.setReportSubject(title);
		report.setReportContent(content);
		report.setMemberId(user.getMemId());
		int result = repservice.insertReport(report);
		if (result == 1)
			return "redirect:/report";
		else
			return "jsp/ReportInsert";
	}

	@RequestMapping(value = "/ReportDelete", method = RequestMethod.GET)
	public String ReportDelete(Model model, @RequestParam Integer reportNo, HttpSession session) {
		// view의 이름을 리턴.
		int result = repservice.deleteReport(reportNo);
		if (result == 1)
			return "redirect:/report";
		else
			return "jsp/ReportView";
	}

	// 신고게시판 댓글 추가
	@RequestMapping(value = "/insertrtr", method = RequestMethod.POST)
	public String inserthtr(Model model, 
			@RequestParam String reportReplyContent, 
			@RequestParam Integer reportNo,
			HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		String id = user.getMemId();
		ReportToReply reportToReply = new ReportToReply();
		reportToReply.setReportReplyContent(reportReplyContent);
		reportToReply.setMemberId(id);
		reportToReply.setReportNo(reportNo);
		session.setAttribute("reportToReply", reportToReply);
		result = rtservice.insertRtr(reportToReply);
		if (result != 1) {
			return "redirect:/reportView?reportNo=" + reportNo;
		} else {
			return "redirect:/reportView?reportNo=" + reportNo;
		}
	}

	// 신고게시판 댓글 지우기
	@RequestMapping(value = "/deleteRtr", method = RequestMethod.GET)
	public String deleteRtr(Model model, @RequestParam Integer reportReplyNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		int result = rtservice.deleteRtr(reportReplyNo);

		if (result == 1) {
			return "redirect:/report";
		} else {
			return "redirect:/report";
		}
	}

}
