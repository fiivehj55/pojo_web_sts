package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.RegistHouse;


public interface RegistHouseDao {
	List<RegistHouse> selectAllRegistHouse(SqlSessionTemplate template);
	
	RegistHouse selectById(SqlSessionTemplate template, int rhId);
	
	int insertRegistHouse(SqlSessionTemplate template, RegistHouse rHouse);
	
	int updateRegistHouse(SqlSessionTemplate template, RegistHouse rHouse);
	
	int deleteRegistHouse(SqlSessionTemplate template, int rhNo);

}
