package com.example.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.Member;
import com.example.service.MemberService;
import com.example.service.ReportService;

@Controller
public class ReportController {
	private static Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	ReportService repservice;
	
	@Autowired
	MemberService mservice;
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024 * 1024);
		return resolver;
	}
	
	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String table(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		// view의 이름을 리턴.
		return "jsp/ReportTable";
	}
}
