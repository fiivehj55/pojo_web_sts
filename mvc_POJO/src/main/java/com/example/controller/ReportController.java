package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.dto.Report;
import com.example.service.ReportService;

@Controller
public class ReportController {

		@Autowired
		ReportService rpservice;
		
		@RequestMapping(value = "/bbs",method=RequestMethod.GET)
		public String table(Model model, Report report, HttpSession session){
			Integer reportNo = report.getReportNo();
			
			if(report != null){
				model.addAttribute("reportNo", reportNo);
			}
			//view의 이름을 리턴.
			return "jsp/Table";
		}
		
		@RequestMapping(value = "/bbs",method=RequestMethod.POST)
		public String tablePost(Model model, HttpSession session){
			//view의 이름을 리턴.
			return "jsp/Table";
		}
		
		@RequestMapping(value="/bbsSelect", method=RequestMethod.POST)
		public String bbsSelect(Model model) {
			return "";
		}
		
}
