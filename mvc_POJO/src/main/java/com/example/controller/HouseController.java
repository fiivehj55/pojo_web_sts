package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, HttpSession session) {
		List<House> house = hservice.selectAllHouse();
		session.setAttribute("house", house);
		return "jsp/HouseList";
	}

	@RequestMapping(value = "/insertHouse", method = RequestMethod.GET)
	public String insertHouseGet(Model model, HttpSession session) {
		return "jsp/HouseJoin";
	}

	@RequestMapping(value = "/insertHouse", method = RequestMethod.POST)
	public String insertHousePost(Model model, @RequestParam String room, @RequestParam String bath,
			@RequestParam String hosting, @RequestParam(value = "tv", defaultValue = "null") String tv,
			@RequestParam(value = "aircon", defaultValue = "null") String aircon,
			@RequestParam(value = "wifi", defaultValue = "null") String wifi,
			@RequestParam(value = "elebe", defaultValue = "null") String elebe,
			@RequestParam(value = "washing", defaultValue = "null") String washing, @RequestParam String rname,
			@RequestParam String infor, @RequestParam String photo, @RequestParam String addr, @RequestParam String day,
			@RequestParam Integer price, HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		House house = new House();
		/* house.setHouseNo(null); */
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
		if (result != 1) {
			return "jsp/HouseJoin";
		} else {
			return "jsp/HouseList";
		}
	}

	@RequestMapping(value = "/searchByHouseNo", method = RequestMethod.GET)
	public String selectByHouseNo(Model model, @RequestParam Integer houseNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		House house = hservice.selectByNoHouse(houseNo);
		List<Reply> reply = Rpservice.selectByHouseNo(houseNo);

		String houseTv = house.getHouseTv();
		String houseAircon = house.getHouseAircon();
		String houseWifi = house.getHouseWifi();
		String houseElebe = house.getHouseElebe();
		String houseWashing = house.getHouseWashing();

		logger.trace("list: {}", reply);

		if (house != null) {
			model.addAttribute("houseNo", houseNo);
			model.addAttribute("houseUser", house.getMemberId());
			model.addAttribute("houseImg", house.getHouseImg());
			model.addAttribute("memberName", house.getMemberId());
			model.addAttribute("houseName", house.getHouseName());
			model.addAttribute("houseScore", house.getHouseScore());
			model.addAttribute("houseInfo", house.getHouseInfo());
			model.addAttribute("houseRoom", house.getHouseRoom());
			model.addAttribute("houseBath", house.getHouseBath());
			model.addAttribute("houseHosting", house.getHouseHosting());
			if (houseTv != null) {
				model.addAttribute("houseTv", "TV");
			}
			if (houseAircon != null) {
				model.addAttribute("houseAircon", "에어컨");
			}
			if (houseWifi != null) {
				model.addAttribute("houseWifi", "WI-FI");
			}
			if (houseElebe != null) {
				model.addAttribute("houseElebe", "엘리베이터");
			}
			if (houseWashing != null) {
				model.addAttribute("houseWashing", "세탁기");
			}
			model.addAttribute("reply", reply);
			// view의 이름을 리턴.
			return "jsp/HouseView";
		}
			return "jps/index2";
	}

	@RequestMapping(value = "/updateHouse", method = RequestMethod.GET)
	public String HouseUpdate(Model model, @RequestParam Integer houseNo, HttpSession session) {
		House house = hservice.selectByNoHouse(houseNo);
		if (house != null) {
			model.addAttribute("house", house);
			return "jsp/HouseUpdate";
		}
		return "redirect:/search";
	}

	private static final String uploadDir = "c:Temp/upload/";

	@RequestMapping(value = "/updateHouse", method = RequestMethod.POST)
	public String HouseUpdatePost(Model model, @RequestParam Integer houseNo, @RequestParam String houseRoom,
			@RequestParam String houseBath, @RequestParam String houseHosting,
			@RequestParam(value = "tv", defaultValue = "null") String houseTv,
			@RequestParam(value = "aircon", defaultValue = "null") String houseAircon,
			@RequestParam(value = "wifi", defaultValue = "null") String houseWifi,
			@RequestParam(value = "elebe", defaultValue = "null") String houseElebe,
			@RequestParam(value = "washing", defaultValue = "null") String houseWashing, @RequestParam String houseName,
			@RequestParam String houseInfo, @RequestParam MultipartFile houseImg, @RequestParam String houseAddress,
			@RequestParam String houseDay, @RequestParam Integer housePrice, HttpSession session) throws IOException {
		Member user = (Member) session.getAttribute("user");

		File idfile = new File(uploadDir + user.getMemId());
		// id파일 존재하지않으면 디렉토리 생성 아니면 회원가입화면으로
		if (!idfile.exists())
			idfile.mkdir();

		File introHouse = new File(uploadDir + "/" + user.getMemId() + "/" + houseNo);
		if (!introHouse.exists())
			introHouse.mkdir();

		File file = new File(uploadDir + user.getMemId() + "/" + houseNo + "/" + houseImg.getOriginalFilename());
		//houseImg.transferTo(file);
		String imgName = houseImg.getOriginalFilename();

		House house = new House();
		house.setHouseNo(houseNo);
		house.setHouseName(houseName);
		house.setHouseAddress(houseAddress);
		house.setHousePrice(housePrice);
		house.setHouseInfo(houseInfo);
		house.setMemberId(user.getMemId());
		house.setDetailId(2);
		house.setHouseRoom(houseRoom);
		house.setHouseBath(houseBath);
		house.setHouseHosting(houseHosting);
		house.setHouseTv(houseTv);
		house.setHouseAircon(houseAircon);
		house.setHouseWifi(houseWifi);
		house.setHouseElebe(houseElebe);
		house.setHouseWashing(houseWashing);
		house.setHouseImg(imgName);
		house.setHouseDay(houseDay);

		int result = hservice.updateHouse(house);
		return "redirect:/search";
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

	@RequestMapping(value = "/deleteHouse", method = RequestMethod.GET)
	public String HouseDelete(Model model, @RequestParam Integer houseNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		House house = hservice.selectByNoHouse(houseNo);
		if (user.getMemId().equals(house.getMemberId())) {
			int result = hservice.deleteHouse(houseNo);
			if (result == 1)
				return "redirect:/search";
			else
				return "forward:/selectByHouse?houseNo=" + houseNo;
		} else {

			return "forward:/selectByHouse?houseNo=" + houseNo;
		}
	}

	// 하우스 댓글 추가
	@RequestMapping(value = "/inserthtr", method = RequestMethod.POST)
	public String inserthtr(Model model, 
			@RequestParam String replyContent,
			@RequestParam Integer houseNo,
			HttpSession session) {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		String id = user.getMemId();
		Integer deId = user.getDetailId();
		Reply reply = new Reply();
		reply.setReplyContent(replyContent);;
		reply.setHouseNo(houseNo);
		reply.setMemberId(id);
		reply.setDetailId(2);
		result = Rpservice.insertReply(reply);
		if(result != 1){
			return "redirect:/selectByHouseNo?houseNo=" + houseNo;
		}else{
			return "redirect:/selectByHouseNo?houseNo=" + houseNo;
		}
	}

	// 하우스 댓글 지우기
	@RequestMapping(value = "/deletehtr", method = RequestMethod.GET)
	public String deleteHtr(Model model, @RequestParam Integer replyNo, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		int result = Rpservice.deleteReply(replyNo);

		if (result == 1) {
			return "redirect:/search";
		} else {
			return "redirect:/search";
		}
	}

	/*
	 * @RequestMapping(value = "/update",method=RequestMethod.GET) public String
	 * updateHouse(Model model, @RequestParam Integer houseNo, HttpSession
	 * session){ House house = hservice.selectByNoHouse(houseNo); if(house !=
	 * null){ model.addAttribute("house", house); return "jsp/HousePage"; }
	 * //view의 이름을 리턴. return "jsp/HouseView"; }
	 */
}
