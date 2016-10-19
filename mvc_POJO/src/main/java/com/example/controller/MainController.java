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
	
}
