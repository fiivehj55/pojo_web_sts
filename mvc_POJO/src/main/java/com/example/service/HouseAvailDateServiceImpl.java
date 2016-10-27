package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.HouseAvailDateDao;
import com.example.dto.House;
import com.example.dto.HouseAvailDate;


@Component
public class HouseAvailDateServiceImpl implements HouseAvailDateService{
	
	private static Logger logger = LoggerFactory.getLogger(HouseAvailDateServiceImpl.class);
	
	@Autowired
	HouseAvailDateDao haddao;
	
	@Autowired
	SqlSessionTemplate template;
	
	@Transactional
	@Override
	public List<HouseAvailDate> selectAllHouseAvailDate() {
		List<HouseAvailDate> list =  null;
		list = haddao.selectAllHouseAvailDate(template);
		return list;
	}
	
	@Transactional
	@Override
	public HouseAvailDate selectByNoHouseAvailDate(Integer houseAvailNo) {
		HouseAvailDate result	=  null;
		result = haddao.selectByNoHouseAvailDate(template, houseAvailNo);
		return result;
	}
	
	@Transactional
	@Override
	public int insertHouseAvailDate(HouseAvailDate houseAvailDate) {
		int result = 0;
		result = haddao.insertHouseAvailDate(template, houseAvailDate);
		logger.trace("result: {}", houseAvailDate);
		return result;
	}
	
	@Transactional
	@Override
	public int updateHouseAvailDate(HouseAvailDate houseAvailDate) {
		int result = 0;
		result = haddao.updateHouseAvailDate(template, houseAvailDate);
		return result;
	}
	
	@Transactional
	@Override
	public int deleteHouseAvailDate(Integer houseAvailNo) {
		int result = 0;
		result = haddao.deleteHouseAvailDate(template, houseAvailNo);
		return result;
	}
	
}
