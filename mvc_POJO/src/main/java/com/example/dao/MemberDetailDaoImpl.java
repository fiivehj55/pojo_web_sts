package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.MemberDetail;


@Component
public class MemberDetailDaoImpl implements MemberDetailDao {
	
	static Logger logger = LoggerFactory.getLogger(MemberDetailDaoImpl.class);


	
	private final String MEMBER_DETAIL_MAP = "pojo.web.dao.MemberDetailMapper.";
	
	@Override
	public List<MemberDetail> selectAllMemberDetail(SqlSessionTemplate template) {
		String stmt = MEMBER_DETAIL_MAP + "selectAllMemberDetail";
		return template.selectList(stmt);
	}

	@Override
	public MemberDetail selectByMemberDetail(SqlSessionTemplate template, int detailId) {
		String stmt = MEMBER_DETAIL_MAP + "selectByMemberDetail";
		return template.selectOne(stmt, detailId);
	}

	@Override
	public int insertMemberDetail(SqlSessionTemplate template, MemberDetail mDetail) {
		String stmt = MEMBER_DETAIL_MAP + "insertMemberDetail";
		return template.insert(stmt, mDetail);
	}

	@Override
	public int updateMemberDetail(SqlSessionTemplate template, MemberDetail mDetail) {
		String stmt = MEMBER_DETAIL_MAP + "updateMemberDetail";
		return template.update(stmt, mDetail);
	}

	@Override
	public int deleteMemberDetail(SqlSessionTemplate template, int deltailId) {
		String stmt = MEMBER_DETAIL_MAP + "deleteMemberDetail"; 
		return template.delete(stmt, deltailId);
	}
	
}
