package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

import com.example.dto.HouseAvailDate;

@Component
public class HouseAvailDateDaoImpl implements HouseAvailDateDao {
	// 하우스 IMPL
	private final String HOUSE_AVAIL_DATE_MAP = "pojo.web.dao.HouseAvailDateMapper.";

	@Override
	public List<HouseAvailDate> selectAllHouseAvailDate(SqlSessionTemplate template) {
		String stmt = HOUSE_AVAIL_DATE_MAP + "selectAllHad";
		return template.selectList(stmt);
	}

	@Override
	public HouseAvailDate selectByNoHouseAvailDate(SqlSessionTemplate template, int houseAvailNo) {
		String stmt = HOUSE_AVAIL_DATE_MAP + "selectByNoHad";
		return template.selectOne(stmt);
	}

	@Override
	public int insertHouseAvailDate(SqlSessionTemplate template, HouseAvailDate houseAvailDate) {
		String stmt = HOUSE_AVAIL_DATE_MAP + "insertHad";
		return template.update(stmt, houseAvailDate);
	}

	@Override
	public int updateHouseAvailDate(SqlSessionTemplate template, HouseAvailDate houseAvailDate) {
		String stmt = HOUSE_AVAIL_DATE_MAP + "updateHad";
		return template.update(stmt, houseAvailDate);
	}

	@Override
	public int deleteHouseAvailDate(SqlSessionTemplate template, int houseAvailNo) {
		String stmt = HOUSE_AVAIL_DATE_MAP + "deleteHad";
		return template.update(stmt, houseAvailNo);
	}
	
	
}
