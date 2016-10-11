package com.example.controller;

<<<<<<< HEAD
import java.util.List;
=======
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.Date;
>>>>>>> branch 'master' of https://github.com/fiivehj55/pojo_web_sts.git

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value = "/houseToReply",method=RequestMethod.GET)
	public String selectByHouseNoforReply(Model model, 
			@RequestParam Integer houseNo,
			HttpSession session){
		Member user = (Member) session.getAttribute("user");
		List<Reply> reply = Rpservice.selectByHouseNo(houseNo);
		//String memberId = user.getMemId();
		//String replyContent = reply.getReplyContent();
		//Date replyDate = reply.getReplyDate();
		logger.trace("list: {}", reply);
		
		model.addAttribute("reply", reply);
		//model.addAttribute("memberId", memberId);
		//model.addAttribute("replyContent", replyContent);
		//model.addAttribute("replyDate", replyDate);
		return "jsp/HouseToReply";
	}

}
