package com.example.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.House;
import com.example.service.HouseService;

@Controller
public class HouseController {
	
	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@Autowired
	HouseService hservice;
	
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024*1024);
		return resolver;
	}
	
	@RequestMapping(value = "/search",method=RequestMethod.GET)
	public String search(Model model){
		
		//view의 이름을 리턴.
		return "jsp/Main";
	}
	
	@RequestMapping(value = "/insertHouse",method=RequestMethod.GET)
	public String insertHouseGet(Model model, HttpSession session){
		/*House new_house = new House();*/
		/*model.addAttribute("new_house", new_house);*/
		//view의 이름을 리턴.
		return "jsp/HouseJoin";
	}
	
	@RequestMapping(value = "/insertHouse",method=RequestMethod.POST)
	public String insertHousePost(Model model, 
			@RequestAttribute("new_house") House house, HttpSession session){
		//view의 이름을 리턴.
		int result = hservice.insertHouse(house);
		model.addAttribute("result", result);
		if(result != 1){
			return "jsp/HouseJoin";
		}else{
			return "jsp/Main";
		}
	}
	
	@RequestMapping(value = "/insertHouse1",method=RequestMethod.GET)
	public String insertHouse1Get(Model model) {
		//view의 이름을 리턴.
		return "jsp/HouseJoin1";
	}
	
	@RequestMapping(value = "/insertHouse1",method=RequestMethod.POST)
	public String insertHouse1Get(Model model,
			@RequestParam Integer houseNo,
			@RequestParam String houseName,
			@RequestParam String houseAddress,
			@RequestParam Integer housePrice,
			@RequestParam Integer houseScore,
			@RequestParam String houseInfo) throws IOException {
		House new_house = new House(houseNo, houseName, houseAddress, housePrice, 
									houseScore, houseInfo, "hong", 2);
		int result = hservice.insertHouse(new_house);
		logger.trace("result: {}",result);

		/*model.addAttribute("new_house", new_house);*/
		//view의 이름을 리턴.
		if(result != 1){
			return "jsp/HouseJoin1";
		}else{
			return "jsp/Main";
		}
	}
	
	@RequestMapping(value = "/insertHouse2",method=RequestMethod.GET)
	public String insertHouse2Get(Model model, HttpSession session){
		House new_house = new House();
		model.addAttribute("new_house", new_house);
		//view의 이름을 리턴.
		return "jsp/HouseJoin2";
	}
}
