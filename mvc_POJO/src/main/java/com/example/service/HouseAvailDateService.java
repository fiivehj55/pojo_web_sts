package com.example.service;

import java.util.List;

import com.example.dto.House;
import com.example.dto.HouseAvailDate;


public interface HouseAvailDateService {

	List<HouseAvailDate> selectAllHouseAvailDate();
	
	HouseAvailDate selectByNoHouseAvailDate(Integer houseAvailNo);
	
	int insertHouseAvailDate(HouseAvailDate houseAvailDate);
	
	int updateHouseAvailDate(HouseAvailDate houseAvailDate);
	
	int deleteHouseAvailDate(Integer houseAvailNo);
	
}
