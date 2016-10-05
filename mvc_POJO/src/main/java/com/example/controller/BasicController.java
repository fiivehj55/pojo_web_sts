package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dto.Member;
import com.example.service.MemberService;

@Controller
public class BasicController {
	
	private static Logger logger = LoggerFactory.getLogger(BasicController.class);

	@Autowired
	MemberService mservice;
	
	@RequestMapping(value = "/hello",method=RequestMethod.GET)
	public String sayHello(Model model){
		model.addAttribute("message", "good morning");
		logger.trace("message");
		//view의 이름을 리턴.
		return "showMessage";
	}
	
	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(Model model){
		
		//view의 이름을 리턴.
		return "index2";
	}
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String loginGet(Model model){
			return "jsp/Login";
	}
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	public String login(Model model,
			@RequestParam String id,
			@RequestParam String password){
		Member member =  mservice.login(id, password);
		System.out.println("test id:"+id+" pass:"+password);
		System.out.println("member :"+member);
		
		if(member == null)
			return "jsp/Login";
		else
			return "index2";
	}
	
	@RequestMapping(value = "/join",method=RequestMethod.GET)
	public String join(Model model, @RequestParam Member member){
		
		//view의 이름을 리턴.
		return "jsp/Join";
	}
	
	@RequestMapping(value = "/mypage",method=RequestMethod.GET)
	public String mypage(Model model){
		
		//view의 이름을 리턴.
		return "jsp/MyPage";
	}
	
	@RequestMapping(value = "/findId",method=RequestMethod.GET)
	public String findId(Model model){
		
		//view의 이름을 리턴.
		return "jsp/FindId";
	}
	
	@RequestMapping(value = "/search",method=RequestMethod.GET)
	public String search(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Main";
	}
	
	@RequestMapping(value = "/bbs",method=RequestMethod.GET)
	public String table(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Table";
	}
	
	@RequestMapping(value = "/faq",method=RequestMethod.GET)
	public String faq(Model model){
		
		//view의 이름을 리턴.
		return "jsp/FAQ";
	}
}
