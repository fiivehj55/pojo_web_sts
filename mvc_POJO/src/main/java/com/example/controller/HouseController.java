package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.service.HouseService;

@Controller
public class HouseController {
	
	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@Autowired
	HouseService mservice;
	
	@RequestMapping(value = "/search",method=RequestMethod.GET)
	public String search(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Main";
	}
	
	@RequestMapping(value = "/insertHouse",method=RequestMethod.GET)
	public String insertHouse(Model model){
		
		//view의 이름을 리턴.
		return "jsp/HouseJoin";
	}
}
