package com.example.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.service.ReportService;

@Controller
public class ReportController {
	
	static Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	ReportService rService;
	/*@RequestMapping(value = "/bbsSelectByNo", method = RequestMethod.POST)
	public String bbsSelectByNoPost(Model model, HttpSession session) {
		// view의 이름을 리턴.
		return "jsp/Table";
	}*/
}
