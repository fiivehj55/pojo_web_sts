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
import com.example.dto.Report;
import com.example.service.ReportService;

@Controller
public class ReportController {
	private static Logger logger = LoggerFactory.getLogger(ReportController.class);

	@Autowired
	ReportService repservice;

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String table(Model model) {
		List<Report> list = repservice.selectAllReport();
		model.addAttribute("Report", list);
		// view의 이름을 리턴.
		return "jsp/ReportList";
	}

	@RequestMapping(value = "/reportView", method = RequestMethod.GET)
	public String reportView(Model model, @RequestParam Integer reportNo) {
		Report report = repservice.selectByReportNo(reportNo);
		model.addAttribute("Report", report);
		// view의 이름을 리턴.
		return "jsp/ReportView";
	}

	@RequestMapping(value = "/ReportInsert", method = RequestMethod.GET)
	public String ReportInsert(Model model) {
		// view의 이름을 리턴.
		return "jsp/ReportInsert";
	}

	@RequestMapping(value = "/ReportInsert", method = RequestMethod.POST)
	public String ReportInsertPost(Model model, @RequestParam String category,
			@RequestParam String title,
			@RequestParam String content, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		Report report = new Report();
		report.setReportCategory(category);
		report.setReportSubject(title);
		report.setReportContent(content);
		report.setMemberId(user.getMemId());
		int result =  repservice.insertReport(report);
		if(result ==1)
			return "redirect:/report";
		else
			return "jsp/ReportInsert";
	}

}
