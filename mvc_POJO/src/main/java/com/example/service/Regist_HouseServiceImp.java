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
		return list;
	}
	@Override
	public int add(RegistHouse rH) {
		int result =0;
		return result;
	}
	@Override
	public int update(RegistHouse rH) {
		int result =0;
		return result;
	}
	public int delete(RegistHouse rH,int rhNo) {
		int result =0;
	return result;
	}
}
