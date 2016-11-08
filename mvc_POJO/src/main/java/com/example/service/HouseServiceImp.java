package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.HouseDao;
import com.example.dto.House;


@Component
public class HouseServiceImp implements HouseService{
	
	private static Logger logger = LoggerFactory.getLogger(HouseServiceImp.class);
	
	@Autowired
	HouseDao hdao;
	
	@Autowired
	SqlSessionTemplate template;
	
	@Transactional
	@Override
	public List<House> selectById(String id) {
		List<House> list =  null;
		list = hdao.selectAllHouse(template);
		return list;
	}
	
	@Transactional
	@Override
	public House selectByNoHouse(int houseNo) {
		House house	=  null;
		house = hdao.selectByNoHouse(template, houseNo);
		return house;
	}
	
	@Transactional
	@Override
	public int insertHouse(House house) {
		int result = 0;
		result = hdao.insertHouse(template, house);
		logger.trace("result: {}", house);
		return result;
	}
	
	@Transactional
	@Override
	public int updateHouse(House house) {
		int result = 0;
		result = hdao.updateHouse(template, house);
		return result;
	}
	
	@Transactional
	@Override
	public int deleteHouse(int houseNo) {
		int result = 0;
		result = hdao.deleteHouse(template, houseNo);
		return result;
	}

	@Transactional
	@Override
	public List<House> selectAllHouse() {
		List<House> result = hdao.selectAllHouse(template);
		return result;
	}

	@Transactional
	@Override
	public List<House> searchHouses(String key, int page) {
		List<House> result = hdao.searchHouses(template, key, page);
		return result;
	}

	@Transactional
	@Override
	public List<House> searchHousesPaging(Integer page) {
		List<House> result = hdao.housePaging(template, page);
		return result;
	}

	@Transactional
	@Override
	public List<House> selectByScore() {
		List<House> list =  null;
		list = hdao.houseScore(template);
		return list;
	}

	@Transactional
	@Override
	public List<House> selectAllKey(String key) {
		List<House> result = hdao.selectAllKey(template, key);
		return result;
	}
	
}
