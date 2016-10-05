package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BasicController {

	@RequestMapping(value = "/hello",method=RequestMethod.GET)
	public String sayHello(Model model){
		model.addAttribute("message", "good morning");
		
		//view의 이름을 리턴.
		return "showMessage";
	}
	
	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(Model model){
		
		//view의 이름을 리턴.
		return "index2";
	}
	
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String login(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Login";
	}
	
	@RequestMapping(value = "/join",method=RequestMethod.GET)
	public String join(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Join";
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
