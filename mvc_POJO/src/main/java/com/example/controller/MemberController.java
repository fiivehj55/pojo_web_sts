package com.example.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.example.dto.Member;
import com.example.service.MemberService;

@Controller
public class MemberController {
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService mservice;
	
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String loginGet(Model model){
		return "jsp/Login";
	}
	@RequestMapping(value = "/loginSuccess",method=RequestMethod.POST)
	public String login(Model model,
			@RequestParam String id,
			@RequestParam String password,
			HttpSession session){
		Member member =  mservice.login(id, password);
		System.out.println("test id:"+id+" pass:"+password);
		System.out.println("member :"+member);
		
		if(member == null){
			return "jsp/Login";
		}
		else{
			session.setAttribute("user", member);
			return "index2";
		}
	}
	@RequestMapping(value = "/logout",method=RequestMethod.GET)
	public String loginout(Model model, HttpSession session){
		session.removeAttribute("user");
		return "index2";
	}
	
	@RequestMapping(value = "/join",method=RequestMethod.GET)
	public String joinGet(Model model){ 
		//view의 이름을 리턴.
		
		Member new_user = new Member();
		model.addAttribute("new_user", new_user);
		return "jsp/Join";
	}
	@RequestMapping(value = "/join",method=RequestMethod.POST)
	public String joinPost(Model model,
			@RequestAttribute("new_user") Member member){ 
		//view의 이름을 리턴.
		int result = mservice.join(member);
		if(result == 0)
			return "jsp/Join";
		else
			return "jsp/Login";
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
}
