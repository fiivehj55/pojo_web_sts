package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.Member;
import com.example.service.MemberService;
import com.example.util.SendMail;

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
			member.setMemPassword("");
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
	
	@RequestMapping(value = "/userSerch",method=RequestMethod.POST)
	public @ResponseBody String memCheck(Model model,
			@RequestParam String name){
		Member user = mservice.Search(name);
		if(user ==null)
			return "false";
		else 
			return "true";
	}

	@RequestMapping(value = "/join",method=RequestMethod.POST)
	public String joinPost(Model model,
			@RequestParam String memId,
			@RequestParam String memPassword,
			@RequestParam String memName,
			@RequestParam String memGender,
			@RequestParam String memNa,
			@RequestParam String memPhone,
			@RequestParam String memEmail,
			@RequestParam MultipartFile memImg,
			@RequestParam String memIntro) throws IOException{
		//파일 객체 생성
		//파일명 같아지는경우 조심 -> 서로 다른 유저가 같은 파일명으로 올릴수 있음.
	
		File idfile = new File(uploadDir+memId);
		//id파일 존재하지않으면 디렉토리 생성 아니면 회원가입화면으로
		if(!idfile.exists())
			idfile.mkdir();
		else
			return "jsp/Join";
		
		File intro = new File(uploadDir+"/"+memId+"/intro");
		if(!intro.exists())
			intro.mkdir();
		
		File file = new File(uploadDir+memId+"/intro/"+ memImg.getOriginalFilename());
		memImg.transferTo(file);
		String imgName = memImg.getOriginalFilename();
		Member member = new Member(memId, memName, memPassword, 
				memNa, memPhone, memEmail, memGender,
				imgName, memIntro, 2, "회원");
		int result = mservice.join(member);
		if(result==1){
			return "jsp/Login";
		}else{
			return "jsp/Join";
		}
	}
	@RequestMapping(value = "/mypage",method=RequestMethod.POST)
	public String mypagePost(Model model,
			@RequestParam String memId,
			@RequestParam String memPassword,
			@RequestParam String memName,
			@RequestParam String memGender,
			@RequestParam String memNa,
			@RequestParam String memPhone,
			@RequestParam String memEmail,
			@RequestParam MultipartFile setImg,
			@RequestParam String memImg,
			@RequestParam String memIntro,
			HttpSession session)throws IOException{
		Member member = (Member) session.getAttribute("user");
		member.setMemPassword(memPassword);
		member.setMemName(memName);
		member.setMemPhone(memPhone);
		member.setMemEmail(memEmail);
		String imgName = "";
		if(!memImg.equals(setImg.getOriginalFilename())){
			File intro = new File(uploadDir+"/"+memId+"/intro");
			File[] introfile = intro.listFiles();
			for(File fle:introfile){
				fle.delete();
			}
			File file = new File(uploadDir+memId+"/intro/"+ setImg.getOriginalFilename());
			setImg.transferTo(file);
			 imgName = setImg.getOriginalFilename();
				
		}else{
			imgName = memImg;
		}
		
		member.setMemImg(imgName);
		member.setMemIntro(memIntro);
		int result = mservice.update(member);
		if(result ==1)
			return "index2";
		else
			return "jsp/MyPage";
	}
	
	@RequestMapping(value = "/inputPass",method=RequestMethod.GET)
	public String inputPass(Model model){
		return "jsp/InputPass";
	}
	@RequestMapping(value = "/deletePass",method=RequestMethod.GET)
	public String deletePass(Model model){
		return "jsp/DeletePass";
	}
	@RequestMapping(value = "/deletePass",method=RequestMethod.POST)
	public String deletePassPost(Model model,
			@RequestParam String pass,
			HttpSession session){
		Member member = (Member) session.getAttribute("user");
		String id = member.getMemId();
		int result =  mservice.delete(id, pass);
		if(result == 1){
			session.removeAttribute("user");
			return "index2";
		}
		else
			return "jsp/DeletePass";
	}
	@RequestMapping(value = "/inputPass",method=RequestMethod.POST)
	public String inputPassPost(Model model,
			HttpSession session,
			@RequestParam String pass
			){
		Member member = (Member) session.getAttribute("user");
		String id = member.getMemId();
		
		member = mservice.login(id, pass);
		if(member!=null){
			model.addAttribute("userinfo", member);
			return "jsp/MyPage";
		}
		else	
			return "jsp/InputPass";
	}
	@RequestMapping(value = "/findId",method=RequestMethod.GET)
	public String findId(Model model){
		return "jsp/FindId";	
	}
	@RequestMapping(value = "/findId",method=RequestMethod.POST)
	public String findIdPost(Model model,
			@RequestParam String name,
			@RequestParam String email
			){

		System.out.println("찾은 name: "+name);
		System.out.println("찾은 email: "+email);
		String findId = mservice.find(name, email);
		System.out.println("찾은 아이디: "+findId);
		String content = "요청하신 아이디는 "+ findId+" 입니다.";
		//받는사람
		String to = "fivehj55@naver.com";
		sendMail(content,to);
		//view의 이름을 리턴.
		return "jsp/Login";
	}
	
	@RequestMapping(value = "/findPass",method=RequestMethod.GET)
	public String findPass(Model model){
		//view의 이름을 리턴.
		return "jsp/FindPass";
	}
	@RequestMapping(value = "/findPass",method=RequestMethod.POST)
	public String findPassPost(Model model,
			@RequestParam String id,
			@RequestParam String name,
			@RequestParam String email,
			HttpSession session){
	
		Member user = mservice.findmember(id, name, email);
		if(user!=null){
			session.setAttribute("userSet", user);
			//비밀번호 설정페이지
			return "jsp/PassSet";
		}else
			return "jsp/FindPass";
	}
	@RequestMapping(value = "/PassSet",method=RequestMethod.POST)
	public String PassSet(Model model,
			@RequestParam String new_Pass,
			HttpSession session){
		Member user = (Member) session.getAttribute("userSet");
		user.setMemPassword(new_Pass);
		int result = mservice.update(user);
		if(result ==1)
			return "index2";
		else
			return "jsp/FindPass";
	}
	
	//to받는 사람
	//content 내용
	public void sendMail(String content,String to){
		String host = "smtp.naver.com";
	    String subject = "네이버를 이용한 메일발송";
	    String from = "fivehj55@naver.com"; //보내는 메일
	   String fromName = "Test";
	   
	   try{
	     //프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
	     Properties props = new Properties();
	     //네이버 SMTP 사용시
	    props.put("mail.smtp.starttls.enable","true");
	     props.put("mail.transport.protocol","smtp");
	     props.put("mail.smtp.host", host);
	     
	     props.put("mail.smtp.port","465");  // 보내는 메일 포트 설정
	    props.put("mail.smtp.user", from);
	     props.put("mail.smtp.auth","true");
	     props.put("mail.smtp.debug", "true");
	     props.put("mail.smtp.socketFactory.port", "465");
	     props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	     props.put("mail.smtp.socketFactory.fallback", "false");


	     Authenticator auth = new SendMail();
	     Session mailSession = Session.getDefaultInstance(props,auth);
	   
	     Message msg = new MimeMessage(mailSession);
	     msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B"))); //보내는 사람 설정
	    InternetAddress[] address = {new InternetAddress(to)};
	    
	     msg.setRecipients(Message.RecipientType.TO, address); //받는 사람설정
	   
	     msg.setSubject(subject); //제목설정
	    msg.setSentDate(new java.util.Date()); //보내는 날짜 설정
	    msg.setContent(content,"text/html; charset=utf-8"); //내용 설정(MIME 지정-HTML 형식)
	    
	     Transport.send(msg); //메일 보내기

	    System.out.println("메일 발송을 완료하였습니다.");
	     }catch(MessagingException ex){
	      System.out.println("mail send error : "+ex.getMessage());
	       ex.printStackTrace();
	     }catch(Exception e){
	      System.out.println("error : "+e.getMessage());
	       e.printStackTrace();
	     } 
	}
	
	@RequestMapping(value = "/idAndPass",method=RequestMethod.GET)
	public String idAndPass(Model model){
		return "jsp/IdPass";
	}
}
