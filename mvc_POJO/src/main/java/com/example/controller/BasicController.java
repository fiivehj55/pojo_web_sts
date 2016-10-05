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
}
