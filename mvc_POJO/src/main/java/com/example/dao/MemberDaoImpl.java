package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.RegistHouse;


@Component
public class MemberDaoImpl implements MemberDao {

	static Logger logger = LoggerFactory.getLogger(MemberDaoImpl.class);


	
	private final String MEMBER_MAP = "pojo.web.dao.memberMapper.";
	
	@Override
	public List<Member> selectAllMember(SqlSessionTemplate template) {
		String stmt = MEMBER_MAP + "selectAllMember";
		return template.selectList(stmt);
	}

	@Override
	public Member selectByIdMember(SqlSessionTemplate template, String memId) {
		String stmt = MEMBER_MAP + "selectByIdMember";
		return template.selectOne(stmt, memId);
	}

	@Override
	public int insertMember(SqlSessionTemplate template, Member member) {
		String stmt = MEMBER_MAP + "insertMember";
		return template.update(stmt, member);
	}

	@Override
	public int updateMember(SqlSessionTemplate template, Member member) {
		String stmt = MEMBER_MAP + "updateMember";
		return template.update(stmt, member);
	}

	@Override
	public int deleteMember(SqlSessionTemplate template, String memId, String memPassword) {
		String stmt = MEMBER_MAP + "deleteMember";
		Map<String, String> member = new HashMap<String, String>();
		member.put("memId", memId);
		member.put("memPassword", memPassword);
		return template.delete(stmt, member);
	}
	@Override
	public String selectId(SqlSessionTemplate template, String name,String email) {
		String stmt = MEMBER_MAP + "findId";
		Map<String, String> member = new HashMap<String, String>();
		member.put("name", name);
		member.put("email", email);
		
		return template.selectOne(stmt, member);
	}

	@Override
	public int updateMemberNp(SqlSessionTemplate template, Member member) {
		String stmt = MEMBER_MAP + "updateMemberNp";
		return template.update(stmt, member);
	}
	@Override
	public Member selectByIdMemberJoinRegistHouse(SqlSessionTemplate template, String memId) {
		String stmt = MEMBER_MAP + "RegistInfo";
		return template.selectOne(stmt, memId);
	}
	
	@Override
	public Member selectByIdMemberJoinHouse(SqlSessionTemplate template, String memId) {
		// TODO Auto-generated method stub
		String stmt = MEMBER_MAP + "hostInfo";
		return template.selectOne(stmt, memId);
	}

	@Override
	public List<Member> memberPaging(SqlSessionTemplate template, int page) {
		String stmt = MEMBER_MAP + "memberPaging";
		Map<String, Object> map = new HashMap<>();
		map.put("low",(page-1)*5+1);
		map.put("high",page*5);
		return template.selectList(stmt,map);
	}

	@Override
	public int deleteMemberById(SqlSessionTemplate template, String memId) {
		String stmt = MEMBER_MAP + "deleteMemberById";
		Map<String, String> member = new HashMap<String, String>();
		member.put("memId", memId);
		return template.delete(stmt, member);
	}
}
