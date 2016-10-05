package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.MemberDao;
import com.example.dao.MemberDaoImpl;
import com.example.dao.MemberDetailDao;
import com.example.dao.MemberDetailDaoImpl;
import com.example.dto.Member;

import ch.qos.logback.core.db.dialect.DBUtil;


@Component
public class MemberServiceImp implements MemberService{
	@Autowired
	MemberDao dao;
	@Autowired
	MemberDetailDao mddao;

	@Autowired
	SqlSessionTemplate template;
	@Override
	public List<Member> allMember() {
		List<Member> list = null;
		return list;
	}
	@Override
	public Member login(String id, String password) {
		Member user = null;
		user = dao.selectByIdMember(template, id);
		if(user.getMemPassword().equals(password))
			return user;
		else
			return null;
	}
	@Override
	public int delete(String id, String password) {
		int result = 0;
		return result;
	}
	@Override
	public int join(Member member) {	
		int result = 0;
		return result;
	}
	@Override
	public int update(Member member) {
		int result = 0;
		return result;
	}
	@Override
	public String find(String name,String email) {
		String member = null;
		return member;
	}
}
