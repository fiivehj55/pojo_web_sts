package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.MemberDao;
import com.example.dao.MemberDetailDao;
import com.example.dto.Member;


@Component
public class MemberServiceImp implements MemberService{
	
	private static Logger logger = LoggerFactory.getLogger(MemberServiceImp.class);
	
	@Autowired
	MemberDao dao;
	@Autowired
	MemberDetailDao mddao;

	@Autowired
	SqlSessionTemplate template;
	@Override
	public List<Member> allMember() {
		List<Member> list = null;
		list = dao.selectAllMember(template);
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
		result = dao.deleteMember(template, id, password);
		return result;
	}
	@Override
	public int join(Member member) {	
		int result = 0;
		result = dao.insertMember(template, member);
		logger.trace("객체 로그인: {}", member);
		return result;
	}
	@Override
	public int update(Member member) {
		int result = 0;
		result = dao.updateMember(template, member);
		return result;
	}
	@Override
	public String find(String name,String email) {
		String member = null;
		member =  dao.selectId(template, name, email);
		return member;
	}
}
