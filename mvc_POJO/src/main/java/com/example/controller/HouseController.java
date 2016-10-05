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
public class HouseController {
	
	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@RequestMapping(value = "/search",method=RequestMethod.GET)
	public String search(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Main";
	}
}
