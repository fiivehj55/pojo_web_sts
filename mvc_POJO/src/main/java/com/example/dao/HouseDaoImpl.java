package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

import com.example.dto.House;

@Component
public class HouseDaoImpl implements HouseDao {
	// 하우스 IMPL
	private final String HOUSE_MAP = "pojo.web.dao.houseMapper.";
	
	@Override
	public List<House> selectAllHouse(SqlSessionTemplate template) {
		String stmt = HOUSE_MAP + "selectAllHouse";
		return template.selectList(stmt);
	}

	@Override
	public List<House> selectByIdHouse(SqlSessionTemplate template, String id) {
		String stmt = HOUSE_MAP + "selectByIdHouse";
		return template.selectList(stmt, id);
	}
	@Override
	public House selectByNoHouse(SqlSessionTemplate template, int houseNo) {
		String stmt = HOUSE_MAP + "selectByNoHouse";
		return template.selectOne(stmt, houseNo);
	}

	@Override
	public int insertHouse(SqlSessionTemplate template, House house) {
		String stmt = HOUSE_MAP + "insertHouse";
		return template.update(stmt, house);
	}

	@Override
	public int updateHouse(SqlSessionTemplate template, House house) {
		String stmt = HOUSE_MAP + "updateHouse";
		return template.update(stmt, house);
	}

	@Override
	public int deleteHouse(SqlSessionTemplate template, int houseNo) {
		String stmt = HOUSE_MAP + "deleteHouse";
		return template.update(stmt, houseNo);
	}

	@Override
	public List<House> searchHouses(SqlSessionTemplate template, String key) {
		String stmt = HOUSE_MAP + "searchHouses";
		return template.selectList(stmt, key);
	}

	@Override
	public List<House> housePaging(SqlSessionTemplate template, int page) {
		String stmt = HOUSE_MAP + "housePaging";
		Map<String, Object> map = new HashMap<>();
		map.put("low",(page-1)*5+1);
		map.put("high",page*5);
		return template.selectList(stmt,map);
	}
}
