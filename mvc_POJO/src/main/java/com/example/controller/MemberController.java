package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.Member;
import com.example.service.MemberService;

@Controller
public class MemberController {
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService mservice;
	
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024*1024);
		return resolver;
	}
	
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
		return "jsp/Join";
	}
	private static final String uploadDir = "c:Temp/upload/";
	
	@RequestMapping(value = "/join",method=RequestMethod.POST)
	public String joinPost(Model model,
			@RequestParam String memId,
			@RequestParam String memPassword,
			@RequestParam String memName,
			@RequestParam String memGender,
			@RequestParam String memNa,
			@RequestParam String memPhone,
			@RequestParam String memEmail,
		//	@RequestParam MultipartFile memImg,
			@RequestParam String memIntro) throws IOException{
		//파일 객체 생성
		//파일명 같아지는경우 조심 -> 서로 다른 유저가 같은 파일명으로 올릴수 있음.
		//File file = new File(uploadDir+memId+"/set/"+ memImg.getOriginalFilename());
		//memImg.transferTo(file);
		//String imgName = memImg.getOriginalFilename();
		Member member = new Member(memId, memName, memPassword, 
				memNa, memPhone, memEmail, memGender,
				"/index.jsp/img", memIntro, 2, "회원");
		int result = mservice.join(member);
		if(result!=1)
			return "jsp/Login";
		else
			return "jsp/Join";
	}
	@RequestMapping(value = "/mypage",method=RequestMethod.GET)
	public String mypage(Model model){
		return "jsp/MyPage";
	}
	
	@RequestMapping(value = "/findId",method=RequestMethod.GET)
	public String findId(Model model){
		
		//view의 이름을 리턴.
		return "jsp/FindId";
	}
	
	@RequestMapping(value = "/findPass",method=RequestMethod.GET)
	public String findPass(Model model){
		
		//view의 이름을 리턴.
		return "jsp/FindPass";
	}

}
