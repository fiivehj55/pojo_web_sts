package com.example.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.Member;
import com.example.dto.Reply;
import com.example.service.HouseService;
import com.example.service.MemberService;
import com.example.service.ReplyService;

@Controller
public class ReplyController {
	private static Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Autowired
	ReplyService Rpservice;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	HouseService hservice;
	
	/*@RequestMapping(value = "/searchByHouseNo",method=RequestMethod.GET)
	public String selectByHouseNoforReply(Model model, 
			@RequestParam Integer houseNo,
			HttpSession session){
		Member user = (Member) session.getAttribute("user");
		Reply reply = Rpservice.selectByHouseNo(houseNo);
		int replyNo = reply.getReplyNo();
		String replyContent = reply.getReplyContent();
		Date replyDate = reply.getReplyDate();
		String memberId = user.getMemId();
		
		if(reply != null){
			model.addAttribute("replyNo", replyNo);
			model.addAttribute("replyContent", replyContent);
			model.addAttribute("replyDate", replyDate);
			model.addAttribute("memberId", memberId);
		}
		return "jps/index2";
	}*/
	
}
