package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.Member;
import com.example.dto.Question;
import com.example.dto.QuestionToReply;
import com.example.dto.ReportToReply;
import com.example.service.QuestionService;
import com.example.service.QuestionToReplyService;

@Controller
public class QuestiontController {

	static Logger logger = LoggerFactory.getLogger(QuestiontController.class);
	@Autowired
	QuestionService qservice;
	
	@Autowired
	QuestionToReplyService qtservice;

	@RequestMapping(value = "/bbs", method = RequestMethod.GET)
	public String table(Model model, HttpSession session, @RequestParam Integer page) {
		Member user = (Member) session.getAttribute("user");
		List<Question> list = null;
		if (user != null) {
			list = qservice.selectByIdPage(user.getMemId(), page);
			session.setAttribute("Question", list);
			list = qservice.selectById(user.getMemId());
			int size = list.size() / 5;
			if (size * 5 < list.size())
				model.addAttribute("max", size + 1);
			else
				model.addAttribute("max", size + 1);

			session.setAttribute("page", page);
		}

		// view의 이름을 리턴.
		return "jsp/QuestList";
	}

	@RequestMapping(value = "/bbsInsert", method = RequestMethod.GET)
	public String bbsInsertGet(Model model, HttpSession session) {
		/* Member user = (Member) session.getAttribute("user"); */
		// view의 이름을 리턴.
		return "/jsp/insertTable";
	}

	@RequestMapping(value = "/daum", method = RequestMethod.POST)
	public String daum(Model model, HttpSession session) {
		return "/jsp/insertTable";
	}

	@RequestMapping(value = "/bbsInsert", method = RequestMethod.POST)
	public String bbsInsertPost(Model model, @RequestParam String title, @RequestParam String content,
			HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		String id = user.getMemId();
		Question question = new Question();
		question.setQuestNo(99);
		question.setQuestTitle(title);
		question.setQuestContent(content);
		question.setQuestDate(null);
		question.setMemberId(id);
		question.setDetailId(2);
		question.setQuestReplyNo(1);
		session.setAttribute("question", question);
		result = qservice.insertQuestion(question);
		if (result != 1) {
			return "jsp/insertTable";
		} else {
			// view의 이름을 리턴.
			return "redirect:/bbs?page=1";
		}
	}

	@RequestMapping(value = "/bbsSelectByNo", method = RequestMethod.GET)
	public String bbsSelectByNoGet(Model model, @RequestParam Integer questNo, HttpSession session) {
		Question question = qservice.selectByNo(questNo);
		Question questionPrevious = qservice.selectByNo(questNo + 1);
		Question questionNext = qservice.selectByNo(questNo - 1);

		// 문의 게시판 댓글
		// List<ReportToReply> reportToReply = qservice.selectB
		model.addAttribute("QuestTitle", question.getQuestTitle());
		model.addAttribute("MemberId", question.getMemberId());
		model.addAttribute("QuestDate", question.getQuestDate());
		model.addAttribute("QuestContent", question.getQuestContent());
		model.addAttribute("questNo", questNo);

		model.addAttribute("questionPrevious", questionPrevious);
		model.addAttribute("questionNext", questionNext);

		// view의 이름을 리턴.
		return "jsp/QuestionView";
	}

	@RequestMapping(value = "/bbsSelectByNo", method = RequestMethod.POST)
	public String bbsSelectByNoPost(Model model, HttpSession session) {
		// view의 이름을 리턴.
		return "jsp/QuestionView";
	}

	@RequestMapping(value = "/bbsUpdate", method = RequestMethod.GET)
	public String bbsUpdate(Model model, @RequestParam Integer questNo, @RequestParam String questTitle,
			@RequestParam String questContent,
			/*
			 * @RequestParam Date questDate,
			 * 
			 * @RequestParam String memberId,
			 * 
			 * @RequestParam Integer questReplyNo,
			 */
			HttpSession session) {
		int result = 0;
		Member member = (Member) session.getAttribute("user");
		Question question = new Question();
		question.setQuestNo(questNo);
		question.setQuestTitle(questTitle);
		question.setQuestContent(questContent);
		question.setMemberId(member.getMemId());

		result = qservice.updateQuestion(question);
		if (result == 1) {
			return "redirect:/bbs?page=1";
		} else {
			// view의 이름을 리턴.
			return "jsp/QuestionUpdate";
		}
	}

	@RequestMapping(value = "/bbsUpdateBefore", method = RequestMethod.GET)
	public String bbsUpdateBefore(Model model, @RequestParam Integer questNo,
			/*
			 * @RequestParam Date questDate,
			 * 
			 * @RequestParam String memberId,
			 * 
			 * @RequestParam Integer questReplyNo,
			 */
			HttpSession session) {
		int result = 0;
		Member member = (Member) session.getAttribute("user");
		Question question = qservice.selectByNo(questNo);

		if (question != null) {
			model.addAttribute("question", question);
			model.addAttribute("questNo", questNo);
		}
		// view의 이름을 리턴.
		return "/jsp/QuestionUpdate";
	}

	@RequestMapping(value = "/bbsView", method = RequestMethod.GET)
	public String bbsView(Model model, @RequestParam Integer questNo, @RequestParam String questTitle,
			@RequestParam String questContent,
			/*
			 * @RequestParam Date questDate,
			 * 
			 * @RequestParam String memberId,
			 * 
			 * @RequestParam Integer questReplyNo,
			 */
			HttpSession session) {
		int result = 0;
		Member member = (Member) session.getAttribute("user");
		Question question = new Question();
		question.setQuestNo(questNo);
		question.setQuestTitle(questTitle);
		question.setQuestContent(questContent);
		question.setMemberId(member.getMemId());

		return "jsp/QuestionView";
	}

	/*
	 * @RequestMapping(value = "/bbsDelete",method=RequestMethod.GET) public
	 * String deletePassGet(Model model,
	 * 
	 * @RequestParam Integer questNo){ System.out.println("NO: "+questNo);
	 * return "jsp/Table"; }
	 */

	@RequestMapping(value = "/bbsDelete", method = RequestMethod.GET)
	public String deletePassPost(Model model, @RequestParam Integer questNo, HttpSession session) {
		System.out.println("NO: " + questNo);
		Member member = (Member) session.getAttribute("user");
		int result = qservice.delete(questNo);
		if (result == 1) {
			return "redirect:/bbs";
		} else {
			return "jsp/selectByTable";
		}
	}

	@RequestMapping(value = "/bbsDel", method = RequestMethod.POST)
	public @ResponseBody String deleteAdmin(Model model, @RequestParam Integer No) {
		qservice.delete(No);
		return null;
	}

	// 문의게시판 댓글 추가
	@RequestMapping(value = "/insertqtr", method = RequestMethod.POST)
	public String inserthtr(Model model, 
			@RequestParam String questReplyContent, 
			@RequestParam Integer questNo,
			HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		String id = user.getMemId();
		QuestionToReply questionToReply = new QuestionToReply();
		questionToReply.setQuestReplyContent(questReplyContent);
		questionToReply.setMemberId(id);
		questionToReply.setQuestNo(questNo);
		session.setAttribute("questionToReply", questionToReply);
		result = qtservice.insertQtr(questionToReply);
		if (result != 1) {
			return "redirect:/bbsSelectByNo?questNo=" + questNo;
		} else {
			return "redirect:/bbsSelectByNo?questNo=" + questNo;
		}
	}

	// 문의게시판 댓글 지우기
	@RequestMapping(value = "/deleteqtr", method = RequestMethod.GET)
	public String deleteRtr(Model model, @RequestParam Integer questReplyNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		int result = qtservice.deleteQtr(questReplyNo);

		if (result == 1) {
			return "redirect:/report";
		} else {
			return "redirect:/report";
		}
	}

}
