package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.RegistHouseDao;
import com.example.dto.RegistHouse;



@Component
public class RegistHouseServiceImp implements RegistHouseService{
	@Autowired
	RegistHouseDao dao;
	@Autowired
	SqlSessionTemplate template;
	
	@Transactional
	@Override
	public RegistHouse selectById(int rhId) {
		RegistHouse list = null;
		list = dao.selectById(template, rhId);
		
		return list;
	}
	
	@Transactional
	@Override
	public int add(RegistHouse rH) {
		int result =0;
		result = dao.insertRegistHouse(template, rH);
		
		return result;
	}
	
	@Transactional
	@Override
	public int update(RegistHouse rH) {
		int result =0;
		result = dao.updateRegistHouse(template, rH);
		
		return result;
	}
	
	@Transactional
	public int delete(int rhNo) {
		int result =0;
		result = dao.deleteRegistHouse(template, rhNo);
		
	return result;
	}

	@Override
	public List<RegistHouse> selectByHouseNo(int houseNo) {
		List<RegistHouse> result = dao.selectByHouseNo(template, houseNo);
		return result;
	}
}
