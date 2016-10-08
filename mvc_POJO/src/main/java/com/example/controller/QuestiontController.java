package com.example.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.example.dto.Member;
import com.example.dto.Question;
import com.example.service.QuestionService;

@Controller
public class QuestiontController {

	@Autowired
	QuestionService qservice;
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024 * 1024);
		return resolver;
	}

	@RequestMapping(value = "/bbs", method = RequestMethod.GET)
	public String table(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		List<Question> list = qservice.selectById(user.getMemId());
		
		session.setAttribute("Question", list);
		// view의 이름을 리턴.
		return "jsp/Table";
	}

	@RequestMapping(value = "/bbs", method = RequestMethod.POST)
	public String tablePost(Model model, HttpSession session) {
		// view의 이름을 리턴.
		return "jsp/Table";
	}

	@RequestMapping(value = "/bbsInsert", method = RequestMethod.GET)
	public String bbsInsertGet(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		// view의 이름을 리턴.
		return "/jsp/insertTable";
	}
	
	@RequestMapping(value = "/bbsInsert", method = RequestMethod.POST)
	public String bbsInsertPost(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		// view의 이름을 리턴.
		return "/jsp/insertTable";
	}

}
