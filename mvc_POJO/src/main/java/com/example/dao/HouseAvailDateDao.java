package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.House;
import com.example.dto.HouseAvailDate;


public interface HouseAvailDateDao {
	// 하우스 DAO
	
	List<HouseAvailDate> selectAllHouseAvailDate(SqlSessionTemplate template);
	
	HouseAvailDate selectByNoHouseAvailDate(SqlSessionTemplate template, int houseAvailNo);
	
	int insertHouseAvailDate(SqlSessionTemplate template, HouseAvailDate houseAvailDate);
	
	int updateHouseAvailDate(SqlSessionTemplate template, HouseAvailDate houseAvailDate);
	
	int deleteHouseAvailDate(SqlSessionTemplate template, int houseAvailNo);
	
}
