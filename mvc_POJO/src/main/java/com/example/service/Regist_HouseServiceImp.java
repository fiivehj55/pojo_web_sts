package com.example.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.RegistHouseDao;
import com.example.dto.RegistHouse;



@Component
public class Regist_HouseServiceImp implements Regist_HouseService{
	@Autowired
	RegistHouseDao dao;
	@Autowired
	SqlSessionTemplate template;
	@Override
	public RegistHouse selectByHouseNo(int houseNo) {
		RegistHouse list = null;
		list = dao.selectByIdRegistHouse(template, houseNo);
		
		return list;
	}
	@Override
	public int add(RegistHouse rH) {
		int result =0;
		result = dao.insertRegistHouse(template, rH);
		
		return result;
	}
	@Override
	public int update(RegistHouse rH) {
		int result =0;
		result = dao.updateRegistHouse(template, rH);
		
		return result;
	}
	public int delete(RegistHouse rH,int rhNo) {
		int result =0;
		result = dao.deleteRegistHouse(template, rhNo);
		
	return result;
	}
}
