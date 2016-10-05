package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.RegistHouse;


@Component
public class RegistHouseDaoImpl implements RegistHouseDao {
	
	static Logger logger = LoggerFactory.getLogger(RegistHouseDaoImpl.class);


	
	private final String REGIST_HOUSE_MAP = "pojo.web.dao.RegistHouseMapper.";

	@Override
	public List<RegistHouse> selectAllRegistHouse(SqlSessionTemplate template) {
		String stmt = REGIST_HOUSE_MAP + "selectAllRh";
		return template.selectList(stmt);
	}

	@Override
	public RegistHouse selectByIdRegistHouse(SqlSessionTemplate template, int rhId) {
		String stmt = REGIST_HOUSE_MAP + "selectByIdRh";
		return template.selectOne(stmt, rhId);
	}

	@Override
	public int insertRegistHouse(SqlSessionTemplate template, RegistHouse rHouse) {
		String stmt = REGIST_HOUSE_MAP + "insertRegistHouse";
		return template.update(stmt, rHouse);
	}

	@Override
	public int updateRegistHouse(SqlSessionTemplate template, RegistHouse rHouse) {
		String stmt = REGIST_HOUSE_MAP + "updateRegistHouse";
		return template.update(stmt, rHouse);
	}

	@Override
	public int deleteRegistHouse(SqlSessionTemplate template, int rhNo) {
		String stmt = REGIST_HOUSE_MAP + "deleteRegistHouse";
		return template.update(stmt, rhNo);
	}
}
