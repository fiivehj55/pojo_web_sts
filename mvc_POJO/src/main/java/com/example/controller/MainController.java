package com.example.controller;

import javax.servlet.http.HttpSession;
import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.dto.Member;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	private static Logger logger = LoggerFactory.getLogger(MainController.class);

	
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
	
	//희준이 구현소스
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Model model, @RequestParam String memId) {
		return "jsp/socketchat1";
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
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model) {
		return "jsp/admin";
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
