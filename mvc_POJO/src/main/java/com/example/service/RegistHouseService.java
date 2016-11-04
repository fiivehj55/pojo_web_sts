package com.example.service;

import com.example.dto.RegistHouse;


//예약 관리 하우스
public interface RegistHouseService {
	
	public RegistHouse selectById(int rhId);
	public int add(RegistHouse rH);
	public int update(RegistHouse rH);
	public int delete(int rhNo);
}
