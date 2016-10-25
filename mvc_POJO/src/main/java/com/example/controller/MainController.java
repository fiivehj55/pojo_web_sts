package com.example.controller;

import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.Report;
import com.example.service.HouseService;
import com.example.service.QuestionService;
import com.example.service.ReplyService;
import com.example.service.ReportService;

import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	private static Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	QuestionService qService;
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	ReportService reportService;
	
	@Autowired
	HouseService hService;
	
	@RequestMapping(value = "/hello",method=RequestMethod.GET)
	public String sayHello(Model model){
		//view의 이름을 리턴.
		return "showMessage";
	}
	
	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(Model model){
		return "index2";
	}
	
	@RequestMapping(value = "/faq",method=RequestMethod.GET)
	public String faq(Model model){
		
		//view의 이름을 리턴.
		return "jsp/FAQ";
	}
	
	@RequestMapping(value = "/terms",method=RequestMethod.GET)
	public String terms(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Terms";
	}
	
	@RequestMapping(value = "/footer",method=RequestMethod.GET)
	public String footer(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Footer";
	}
	
	@RequestMapping(value = "/hosting", method = RequestMethod.GET)
	public String hosting(Model model) {
		return "jsp/Hosting";
	}
	
	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
	public String kakao(Model model) {
		return "jsp/kakao";
	}
	

	@RequestMapping(value = "/chatprivate", method = RequestMethod.GET)
	public String chat(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("user");
		return "jsp/socketchatRoom";
	}
	
	//강사님이 주신소스
	@RequestMapping(value = "/chattest", method = RequestMethod.GET)
	public String chattest(Model model, @RequestParam String memId, HttpSession session) {
		Member member = (Member) session.getAttribute("user");
		String id = member.getMemId();
		logger.trace(id);
		return "jsp/socketchat";
	}

	@RequestMapping(value = "/dateView", method = RequestMethod.GET)
	public String dateView(Model model) {
		return "jsp/dateView";
	}
	
	@RequestMapping(value = "/adminBoard", method = RequestMethod.GET)
	public String adminBoard(Model model) {
		return "jsp/adminHouse";
	}
	@RequestMapping(value = "/adminHouse", method = RequestMethod.GET)
	public String adminBoard2(Model model,
			@RequestParam Integer page) {
		List<House> list =  hService.searchHousesPaging(page);
		model.addAttribute("house", list);
		list = hService.selectAllHouse();
		int size = list.size()/6;
		if(size*6 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminHouse";
	}
	@RequestMapping(value = "/adminQuestion", method = RequestMethod.GET)
	public String adminQuestion(Model model,
			@RequestParam Integer page) {
		/*
		List<House> list =  qService.selectByIdPage(memberId, page)(page);
		model.addAttribute("house", list);
		int size = list.size()/6;
		if(size*6 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);*/
		return "jsp/adminQuestion";
	}@RequestMapping(value = "/adminReply", method = RequestMethod.GET)
	public String adminReply(Model model,
			@RequestParam Integer page) {
		
		//하우스 댓글 페이징 작업!!
		
		/*
		List<House> list =  replyService.selectAllReply(page);
		model.addAttribute("house", list);
		int size = list.size()/6;
		if(size*6 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);*/
		return "jsp/adminReply";
	}@RequestMapping(value = "/adminReport", method = RequestMethod.GET)
	public String adminReport(Model model,
			@RequestParam Integer page, HttpSession session) {
		List<Report> list = null;
		list = reportService.selectReportPage(page);
		
		model.addAttribute("Report", list);
		list = reportService.selectAllReport();

		int size = list.size()/5;
		if(size*5 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
			
		session.setAttribute("page", page);
		return "jsp/adminReport";
	}
	
	@RequestMapping(value = "/dateView", method = RequestMethod.POST)
	public @ResponseBody String dateViewPost(Model model,
			@RequestParam Integer month,
			@RequestParam Integer year
			) {
		Calendar today = Calendar.getInstance();
		today.set(Calendar.MONTH,month);
		today.set(Calendar.YEAR,year);
		int toMonth = today.get(Calendar.MONTH);
		today.set(Calendar.MONTH, toMonth - 1);
		int pre = today.getActualMaximum(Calendar.DATE);
		today.set(Calendar.MONTH, toMonth);
		int hr = today.get(Calendar.DATE);
		today.set(Calendar.DATE, 1);
		int start = today.get(Calendar.DAY_OF_WEEK);
		int end = today.getActualMaximum(Calendar.DATE);
		
		String str = "";
		for (int i = 1; i <= 42; i++) {
			if (i >= start) {
				if (i - start + 1 <= end) {
					str+="<div class='date'>"+
							(i - start + 1)+
							"</div>";
				} else {
					str+="<div class='next'>"+
							(i - end - start + 1)+
							"</div>";
					
				}
			} else {
				str+="<div class='pre'>"+
						(pre - start + i + 1)+
						"</div>";			
			}
		}
		return str;
	}

}
