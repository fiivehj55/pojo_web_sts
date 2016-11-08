package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.House;


public interface HouseDao {
	// 하우스 DAO
	
	List<House> selectAllHouse(SqlSessionTemplate template);
	
	House selectByNoHouse(SqlSessionTemplate template, int houseNo);
	
	List<House> selectByIdHouse(SqlSessionTemplate template, String id);
	
	List<House> searchHouses(SqlSessionTemplate template, String key, int page);
	
	List<House> selectAllKey(SqlSessionTemplate template, String key);
	
	int insertHouse(SqlSessionTemplate template, House house);
	
	int updateHouse(SqlSessionTemplate template, House house);
	
	int deleteHouse(SqlSessionTemplate template, int houseNo);
	
	List<House> housePaging(SqlSessionTemplate template, int page);
	
	List<House> houseScore(SqlSessionTemplate template);
	
}
