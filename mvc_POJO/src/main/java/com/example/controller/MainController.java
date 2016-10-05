package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private static Logger logger = LoggerFactory.getLogger(MainController.class);

	/*@Autowired
	MemberService mservice;*/
	
	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(Model model){
		logger.trace("message");
		//view의 이름을 리턴.
		return "index2";
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
