package com.example.controller;

import java.util.Calendar;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.Question;
import com.example.dto.QuestionToReply;
import com.example.dto.Reply;
import com.example.dto.Report;
import com.example.dto.ReportToReply;
import com.example.service.HouseService;
import com.example.service.MemberService;
import com.example.service.QuestionService;
import com.example.service.QuestionToReplyService;
import com.example.service.ReplyService;
import com.example.service.ReportService;
import com.example.service.ReportToReplyService;

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
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	QuestionToReplyService qtrservice;
	
	@Autowired
	ReportToReplyService rtrservice;
	
	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(Model model){
		List<House> house = hService.selectByScore();
		model.addAttribute("house", house);
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
	@RequestMapping(value = "/chatLogin", method = RequestMethod.GET)
	public String chatLogin(Model model, HttpSession session) {
		return "jsp/LoginChat";
	}
/*	//강사님이 주신소스
	@RequestMapping(value = "/chattest", method = RequestMethod.GET)
	public String chattest(Model model, @RequestParam String memId, HttpSession session) {
		Member member = (Member) session.getAttribute("user");
		String id = member.getMemId();
		logger.trace(id);
<<<<<<< HEAD
		return "jsp/socketchat";
	}*/

	@RequestMapping(value = "/dateView", method = RequestMethod.GET)
	public String dateView(Model model,
			@RequestParam Integer houseNo) {
		model.addAttribute("houseNo", houseNo);
		
		House house = hService.selectByNoHouse(houseNo);
	 	model.addAttribute("house", house);
		return "jsp/dateView2";
	}
	
	@RequestMapping(value = "/adminLogin",method=RequestMethod.GET)
	   public String loginGet(Model model){
	      return "jsp/adminPage";
	}
	@RequestMapping(value = "/adminPage", method = RequestMethod.POST)
	public String adminPage(Model model,
			@RequestParam String password,
			HttpSession session) {
		String id = "admin";
		Member member =  mservice.login(id, password);
	    System.out.println("test id:"+id+" pass:"+password);
	    System.out.println("member :"+member);
	      
	    if(member == null && !password.equals("admin")){
	    	return "jsp/Login";
	    }
	    else{
	    	member.setMemPassword("");
	    	session.setAttribute("user", member);
	    	return "redirect:/adminQuestion?page=1";
	    }
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
			@RequestParam Integer page,
			HttpSession session) {
		
		List<Question> list =  qService.selectByPage(page);
		model.addAttribute("Question", list);
		list =  qService.selectAll();
		int size = list.size()/6;
		if(size*6 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminQuestion";
	}
	
	@RequestMapping(value = "/adminReply", method = RequestMethod.GET)
	public String adminReply(Model model,
			@RequestParam Integer page,
			HttpSession session) {
		
		List<Reply> list = replyService.htrPaging(page);
		model.addAttribute("reply", list);
		list = replyService.selectAllReply();
		int size = list.size()/6;
		if(size*6 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminReply";
	}
	
	@RequestMapping(value = "/adminReport", method = RequestMethod.GET)
	public String adminReport(Model model,
			@RequestParam Integer page, HttpSession session) {
		List<Report> list = null;
		list = reportService.selectReportPage(page);

		session.setAttribute("Report", list);
		list = reportService.selectAllReport();

		int size = list.size()/5;
		if(size*5 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
			session.setAttribute("page", page);
		return "jsp/adminReport";
	}
	
	@RequestMapping(value = "/adminQuestionReply", method = RequestMethod.GET)
	public String adminQuestionReply(Model model,
			@RequestParam Integer page, HttpSession session) {
		List<QuestionToReply> list = null;
		list = qtrservice.searchQtrPaging(page);

		session.setAttribute("qtr", list);
		list = qtrservice.selectAllQtr();

		int size = list.size()/6;
		if(size*5 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminQuestionReply";
	}
	
	@RequestMapping(value = "/adminReportReply", method = RequestMethod.GET)
	public String adminReportReply(Model model,
			@RequestParam Integer page, HttpSession session) {
		List<ReportToReply> list = null;
		list = rtrservice.searchRtrPaging(page);

		session.setAttribute("rtr", list);
		list = rtrservice.selectAllRtr();

		int size = list.size()/6;
		if(size*5 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminReportReply";
	}
	
	@RequestMapping(value = "/adminCustomer", method = RequestMethod.GET)
	public String adminCustomer(Model model,
			@RequestParam Integer page, HttpSession session) {
		List<Member> list = null;
		list = mservice.memberPaging(page);

		session.setAttribute("member", list);
		list = mservice.allMember();

		int size = list.size()/6;
		if(size*5 < list.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		return "jsp/adminCustomer";
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
		for(int i = 0; i <=5;i++){
			str+="<ul class='days'>";
			for(int j = 1; j<=7;j++){
				int value = i*7+j;
				if (value >= start) {
					if (value - start + 1 <= end) {
						str+="<li class='day'> <div class='date'>"+
								(value - start + 1)+
								"</div></div>";
					} else {
						str+="<li class='day other-month'> <div class='next'>"+
								(value - end - start + 1)+
								"</div></div>";
					}
				} else {
					str+="<li class='day other-month'><div class='pre'>"+
							(pre - start + value + 1)+
							"</div></div>";			
				}
			}
			str+="</ul>";
		}
		return str;
	}
	
}
