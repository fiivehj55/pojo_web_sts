package com.example.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String search(Model model, @RequestParam Integer page,
			HttpSession session) {
		List<House> house = hservice.searchHousesPaging(page);
		model.addAttribute("house", house);
		int size = house.size()/6;
		if(size*6 < house.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("page", page);
		//session.setAttribute("house", house);
		return "jsp/HouseList";
	}
	
	@RequestMapping(value = "/searchbar", method = RequestMethod.GET)
	public String searchbar(Model model, 
			@RequestParam String key, @RequestParam Integer page,
			HttpSession session) {
		List<House> houses = hservice.searchHouses(key, page);
		int size = houses.size()/6;
		if(size*6 < houses.size())
			model.addAttribute("max", size+1);
		else
			model.addAttribute("max", size);
		model.addAttribute("key", key);
		session.setAttribute("page", page);
		session.setAttribute("key", key);
	/*	for(House house:houses){
			File file = new File(uploadDir + "/" + house.getMemberId() + "/"+house.getHouseNo()+"/main");
			File[] files = file.listFiles();	
			if(files!=null){
				try{
					//파일 이름
				String fileName = files[0].getName();
				house.setHouseImg(fileName);
				}catch(ArrayIndexOutOfBoundsException e){}
			}
		}*/
		model.addAttribute("house", houses);
		
		return "jsp/HouseList";
	}
	
	@RequestMapping(value = "/insertHouse", method = RequestMethod.GET)
	public String insertHouseGet(Model model, HttpSession session) {
		Member user = (Member) session.getAttribute("user");
		if(user == null){
			return "jsp/Login";
		}
		return "jsp/HouseJoin";
	}
	@RequestMapping(value = "/jusoPopup")
	public String jusoPopup(Model model, HttpSession session) {
		return "jsp/jusoPopup";
	}
	
	private static final String uploadDir = "c:\\Temp/upload/";
	@RequestMapping(value = "/insertHouse", method = RequestMethod.POST)
	public String insertHousePost(Model model, 
			@RequestParam String room, @RequestParam String bath,
			@RequestParam String hosting, 
			@RequestParam(value = "tv", defaultValue = "null") String tv,
			@RequestParam(value = "aircon", defaultValue = "null") String aircon,
			@RequestParam(value = "wifi", defaultValue = "null") String wifi,
			@RequestParam(value = "elebe", defaultValue = "null") String elebe,
			@RequestParam(value = "washing", defaultValue = "null") String washing, @RequestParam String rname,
			@RequestParam String infor,
			@RequestParam MultipartFile mainPhoto,
			@RequestParam List<MultipartFile> photo,
			@RequestParam String postcodify_address, @RequestParam String day,
			@RequestParam String postcodify_details,
			@RequestParam Integer price, HttpSession session) throws IOException {
		int result = 0;
		Member user = (Member) session.getAttribute("user");
		
		File idfile = new File(uploadDir + user.getMemId());
		// id파일 존재하지않으면 디렉토리 생성 아니면 회원가입화면으로
		if (!idfile.exists())
			idfile.mkdir();

		
	
		House house = new House();
		house.setHouseName(rname);
		house.setHouseAddressDetail(postcodify_details);
		house.setHouseAddress(postcodify_address);
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
		house.setHouseImg(mainPhoto.getOriginalFilename());
		house.setHouseDay(day);
		/*session.setAttribute("house", house);*/
		result = hservice.insertHouse(house);
		System.out.println("방금 등록된 하우스번호 : "+house.getHouseNo());
		
		File introHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo());
		if (!introHouse.exists())
			introHouse.mkdir();
		File mainHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/other");
		if (!mainHouse.exists())
			mainHouse.mkdir();
		
		File otherHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/main");
		if (!otherHouse.exists())
			otherHouse.mkdir();
		
		 String mainName = mainPhoto.getOriginalFilename();
         File mainimageFile = new File(uploadDir + user.getMemId() + "/"+house.getHouseNo()+"/main/" + mainName);
         mainPhoto.transferTo(mainimageFile);
		
		if (null != photo && photo.size() > 0) 
        {
            for (MultipartFile multipartFile : photo) {
 
            	String fileName = multipartFile.getOriginalFilename();
                File imageFile = new File(uploadDir + user.getMemId() + "/"+house.getHouseNo()+"/other/" + fileName);
                try
                {
                    multipartFile.transferTo(imageFile);
                } catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
		
		
		/*
		 * 파일업로드
		 * @RequestParam MultipartFile photo 경우
				File file = new File(uploadDir + user.getMemId() + "/"+house.getHouseNo()+"/" + photo.getOriginalFilename());
				photo.transferTo(file);
				String imgName = photo.getOriginalFilename();
		*/	
		if (result != 1) {
			return "jsp/HouseJoin";
		} else {
			return "redirect:/search?page=1";
		}
	}

	@RequestMapping(value = "/houseView", method = RequestMethod.GET)
	public String selectByHouseNo(Model model, @RequestParam Integer houseNo, HttpSession session) {
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
			File userImg = new File(uploadDir+house.getMemberId()+ "/intro");
			File[] imgs = userImg.listFiles();
			if(imgs != null){
			String imgName = imgs[0].getName();
			model.addAttribute("memImg", imgName);
			}
			/*
			 * 등록자의 이미지 등록
			String memImg = 
			model.addAttribute("memImg", attributeValue)
			*/
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
		return "redirect:/search?page=1";
	}

	@RequestMapping(value = "/updateHouse", method = RequestMethod.POST)
	public String HouseUpdatePost(Model model, 
			@RequestParam Integer houseNo, @RequestParam String houseRoom,
			@RequestParam String houseBath, @RequestParam String houseHosting,
			@RequestParam(value = "tv", defaultValue = "null") String houseTv,
			@RequestParam(value = "aircon", defaultValue = "null") String houseAircon,
			@RequestParam(value = "wifi", defaultValue = "null") String houseWifi,
			@RequestParam(value = "elebe", defaultValue = "null") String houseElebe,
			@RequestParam(value = "washing", defaultValue = "null") String houseWashing, 
			@RequestParam String houseName, @RequestParam String houseInfo, 
			@RequestParam MultipartFile mainPhoto,
			@RequestParam List<MultipartFile> photo,
			@RequestParam String houseAddress,
			@RequestParam String houseAddressDetail,
			@RequestParam String houseDay, @RequestParam Integer housePrice, 
			HttpSession session) throws IOException {
		Member user = (Member) session.getAttribute("user");
		File idfile = new File(uploadDir + user.getMemId());
		// id파일 존재하지않으면 디렉토리 생성 아니면 회원가입화면으로
		if (!idfile.exists())
			idfile.mkdir();

	
/*		File file = new File(uploadDir + user.getMemId() + "/" + houseNo + "/" + houseImg.getOriginalFilename());
		houseImg.transferTo(file);
		String imgName = houseImg.getOriginalFilename();*/
		House house = hservice.selectByNoHouse(houseNo);
		house.setHouseNo(houseNo);
		house.setHouseName(houseName);
		house.setHouseAddress(houseAddress);
		house.setHouseAddressDetail(houseAddressDetail);
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
		//house.setHouseImg(imgName);
		house.setHouseDay(houseDay);
		File introHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo());
		if (!introHouse.exists())
			introHouse.mkdir();
		File mainHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/main");
		if (!mainHouse.exists())
			mainHouse.mkdir();
		
		File otherHouse = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/other");
		if (!otherHouse.exists())
			otherHouse.mkdir();
		if(!mainPhoto.getOriginalFilename().equals("")){
			System.out.println("mainphoto: "+mainPhoto.getOriginalFilename());
			String imgName = mainPhoto.getOriginalFilename();
			house.setHouseImg(imgName);
			File[] files = mainHouse.listFiles();
			try{
				for(File file : files){
					file.delete();
				}}catch (NullPointerException e) {
					// TODO: handle exception
				}
			File mainfile = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/main/"+imgName);
			mainPhoto.transferTo(mainfile);
		}
		if(!photo.get(0).getOriginalFilename().equals("")){
			File[] files = otherHouse.listFiles();
			try{
			for(File file : files){
				file.delete();
			}}catch (NullPointerException e) {
				// TODO: handle exception
			}
			for(MultipartFile multipartFile: photo){
				String fileName = multipartFile.getOriginalFilename();
				File otherfile = new File(uploadDir + "/" + user.getMemId() + "/"+house.getHouseNo()+"/other/"+fileName);
				multipartFile.transferTo(otherfile);
			}
		}
		int result = hservice.updateHouse(house);
		return "redirect:/houseView?houseNo="+house.getHouseNo();
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
		System.out.println(user.getMemId());
		if (user.getMemId().equals(house.getMemberId())) {
			int result = hservice.deleteHouse(houseNo);
			if (result == 1)
				return "redirect:/search?page=1";
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
	
	@RequestMapping(value = "/DelHouse",method=RequestMethod.POST)
	public @ResponseBody String deleteAdmin(Model model,@RequestParam Integer No){
		hservice.deleteHouse(No);
		return null;
	}
	/*
	 * @RequestMapping(value = "/update",method=RequestMethod.GET) public String
	 * updateHouse(Model model, @RequestParam Integer houseNo, HttpSession
	 * session){ House house = hservice.selectByNoHouse(houseNo); if(house !=
	 * null){ model.addAttribute("house", house); return "jsp/HousePage"; }
	 * //view의 이름을 리턴. return "jsp/HouseView"; }
	 */
}
