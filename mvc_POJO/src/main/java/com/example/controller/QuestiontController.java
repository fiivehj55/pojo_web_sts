package com.example.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

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
		/*Member user = (Member) session.getAttribute("user");*/
		// view의 이름을 리턴.
		return "/jsp/insertTable";
	}
	
	@RequestMapping(value = "/bbsInsert", method = RequestMethod.POST)
	public String bbsInsertPost(Model model,
			@RequestParam String title, 
			@RequestParam String content,
			HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		String id = user.getMemId();
		Question question = new Question();
		question.setQuestNo(99);
		question.setQuestTitle(title);
		question.setQuestContent(content);
		question.setQuestDate(null);
		question.setMemberId(id);
		question.setDetailId(2);
		question.setQuestReplyNo(1);
		session.setAttribute("question", question);
		result = qservice.insertQuestion(question);
		if(result != 1){
			return "redirect:/bbs";
		}else{
			// view의 이름을 리턴.
			return "/jsp/Table";
		}
	}
	
	@RequestMapping(value = "/bbsSelectByNo", method = RequestMethod.GET)
	public String bbsSelectByNoGet(Model model, @RequestParam Integer questNo,
			HttpSession session) {
		Question question = qservice.selectByNo(questNo);
		String questTitle = question.getQuestTitle();
		String questContent = question.getQuestContent();
		Date questDate = question.getQuestDate();
		String memberId = question.getMemberId();
		Integer questReplyNo = question.getQuestReplyNo();
		
		if(question != null){
			model.addAttribute("question", question);
			model.addAttribute("questTitle", questTitle);
			model.addAttribute("questContent", questContent);
			model.addAttribute("questDate", questDate);
			model.addAttribute("memberId", memberId);
			model.addAttribute("questReplyNo", questReplyNo);
		}
		// view의 이름을 리턴.
		return "/jsp/selectByTable";
	}
	
	@RequestMapping(value = "/bbsSelectByNo", method = RequestMethod.POST)
	public String bbsSelectByNoPost(Model model, HttpSession session) {
		// view의 이름을 리턴.
		return "jsp/Table";
	}
	
	@RequestMapping(value = "/bbsUpdate", method = RequestMethod.GET)
	public String bbsUpdate(Model model,
			@RequestParam Integer questNo,
			@RequestParam String questTitle,
			@RequestParam String questContent,
			/*@RequestParam Date questDate,
			@RequestParam String memberId,
			@RequestParam Integer questReplyNo,*/
			HttpSession session) {
		int result = 0;
		Member member = (Member) session.getAttribute("user");
		Question question = new Question();
		question.setQuestNo(questNo);
		question.setQuestTitle(questTitle);
		question.setQuestContent(questContent);
		question.setMemberId(member.getMemId());
		
		result = qservice.updateQuestion(question);
		if(result == 1){
			return "redirect:/bbs";
		}else{
			// view의 이름을 리턴.
			return "jsp/updateTable";
		}
	}

}
