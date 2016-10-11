package com.example.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.Reply;
import com.example.service.HouseService;
import com.example.service.MemberService;
import com.example.service.ReplyService;

@Controller
public class HouseController {
	
	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@Autowired
	HouseService hservice;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	ReplyService Rpservice;
	
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024*1024);
		return resolver;
	}
	
	@RequestMapping(value = "/search", method=RequestMethod.GET)
	public String search(Model model, HttpSession session){
		Member user = (Member) session.getAttribute("user");
		List<House> house = hservice.selectAllHouse();
		session.setAttribute("house", house);
		//view의 이름을 리턴.
		return "jsp/Main";
	}
	
	@RequestMapping(value = "/insertHouse", method=RequestMethod.GET)
	public String insertHouseGet(Model model, HttpSession session){
		/*House new_house = new House();*/ 
		/*model.addAttribute("new_house", new_house);*/
		//view의 이름을 리턴.
		return "jsp/HouseJoin";
	}
	
	@RequestMapping(value = "/insertHouse",method=RequestMethod.POST)
	public String insertHousePost(Model model,
			@RequestParam String room, @RequestParam String bath,
			@RequestParam String hosting, 
			@RequestParam(value="tv",defaultValue="null") String tv,
			@RequestParam(value="aircon", defaultValue="null") String aircon, 
			@RequestParam(value="wifi", defaultValue="null") String wifi,
			@RequestParam(value="elebe", defaultValue="null") String elebe, 
			@RequestParam(value="washing", defaultValue="null") String washing,
			@RequestParam String rname, @RequestParam String infor,
			@RequestParam String photo, @RequestParam String addr,
			@RequestParam String day, @RequestParam Integer price,
			HttpSession session){
		//view의 이름을 리턴.
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		House house = new House();
		/*house.setHouseNo(null);*/
		house.setHouseName(rname);
		house.setHouseAddress(addr);
		house.setHousePrice(price);
		house.setHouseScore(9);
		house.setHouseInfo(infor);
		house.setMemberId(user.getMemId());
		house.setDetailId(2);
		house.setHouseRoom(room);
		house.setHouseBath(bath);
		house.setHouseHosting(hosting);
		house.setHouseTv(tv);
		house.setHouseAircon(aircon);
		house.setHouseWifi(wifi);
		house.setHouseElebe(elebe);
		house.setHouseWashing(washing);
		house.setHouseImg(photo);
		house.setHouseDay(day);
		session.setAttribute("house", house);
		result = hservice.insertHouse(house);
		if(result != 1){
			return "jsp/HouseJoin";
		}else{
			return "jsp/Main";
		}
	}
	
	// 예비용 InsertHouse
	/*@RequestMapping(value = "/insertHouse",method=RequestMethod.POST)
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
	}*/
	
	/*@RequestMapping(value = "/insertHouse1",method=RequestMethod.GET)
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

		model.addAttribute("new_house", new_house);
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
	}*/
	
	@RequestMapping(value = "/searchByHouseNo",method=RequestMethod.GET)
	public String selectByHouseNo(Model model, @RequestParam Integer houseNo,
			HttpSession session){
		House house = hservice.selectByNoHouse(houseNo);
		String houseTv = house.getHouseTv();
		String houseAircon = house.getHouseAircon();
		String houseWifi = house.getHouseWifi();
		String houseElebe =	house.getHouseElebe();
		String houseWashing = house.getHouseWashing();
		
		Member user = (Member) session.getAttribute("user");
		Reply reply = Rpservice.selectByHouseNo(houseNo);
		int replyNo = reply.getReplyNo();
		String replyContent = reply.getReplyContent();
		Date replyDate = reply.getReplyDate();
		String memberId = user.getMemId();
	
		if(house != null){
			model.addAttribute("houseImg", house.getHouseImg());
			model.addAttribute("memberName", house.getMemberId());
			model.addAttribute("houseName", house.getHouseName());
			model.addAttribute("houseScore", house.getHouseScore());
			model.addAttribute("houseInfo", house.getHouseInfo());
			model.addAttribute("houseRoom",house.getHouseRoom());
			model.addAttribute("houseBath",house.getHouseBath());
			model.addAttribute("houseHosting", house.getHouseHosting());
			if(houseTv!=null){
				model.addAttribute("houseTv", "TV");
			}
			if(houseAircon!=null){
				model.addAttribute("houseAircon", "에어컨");
			}
			if(houseWifi!=null){
				model.addAttribute("houseWifi", "WI-FI");
			}
			if(houseElebe!=null){
				model.addAttribute("houseElebe","엘리베이터");
			}
			if(houseWashing!=null){
				model.addAttribute("houseWashing", "세탁기");
			}
			model.addAttribute("replyNo", replyNo);
			model.addAttribute("replyContent", replyContent);
			model.addAttribute("replyDate", replyDate);
			model.addAttribute("memberId", memberId);
			//view의 이름을 리턴.
			return "jsp/HouseView";
		}
		return "jps/index2";
	}
	
	@RequestMapping(value = "/selectByHouse",method=RequestMethod.GET)
	public String updateHouse(Model model, @RequestParam Integer houseNo, HttpSession session){
		House house = hservice.selectByNoHouse(houseNo);
		if(house != null){
			model.addAttribute("house", house);			
			return "jsp/HousePage";
		}
		//view의 이름을 리턴.
		return "jsp/searchHouse";
	}
	
	@ModelAttribute
	private void setListData(Model model) {
		// RADIO_BUTTONS
		model.addAttribute("rooms", new String[] { "1개", "2개", "3개" });
		model.addAttribute("baths", new String[] { "1개", "2개", "3개" });
		model.addAttribute("hosting", new String[] { "1명", "2명", "3명", "4명" });
		
		model.addAttribute("tv", new String[] { "TV" });
		model.addAttribute("aircon", new String[] { "에어컨" });
		model.addAttribute("wifi", new String[] { "WI-FI" });
		model.addAttribute("elebe", new String[] { "엘리베이터" });
		model.addAttribute("washing", new String[] { "세탁기" });
		
		model.addAttribute("day", new String[] { "일", "주", "월" });
	}
	
}
