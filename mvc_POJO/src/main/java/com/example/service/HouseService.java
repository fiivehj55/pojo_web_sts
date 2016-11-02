package com.example.service;

import java.util.List;

import com.example.dto.House;


public interface HouseService {
	//memberId로 검색 
	//예약 하우스 조인
	List<House> selectById(String id);
	//해당 하우스 상세보기위해
	House selectByNoHouse(int houseNo);
	
	//하우스등록
	int insertHouse(House house);
	//하우스 수정
	int updateHouse(House house);
	//하우스 삭제
	int deleteHouse(int houseNo);
	
	// 하우스 전체 조회
	List<House> selectAllHouse();
	
	List<House> searchHouses(String key, int page);
	
	List<House> searchHousesPaging(Integer page);
	
	List<House> selectByScore();
}
