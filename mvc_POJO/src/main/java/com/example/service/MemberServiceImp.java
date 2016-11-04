package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.MemberDao;
import com.example.dao.MemberDetailDao;
import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.RegistHouse;


@Component
public class MemberServiceImp implements MemberService{
	
	private static Logger logger = LoggerFactory.getLogger(MemberServiceImp.class);
	
	@Autowired
	MemberDao dao;
	@Autowired
	MemberDetailDao mddao;

	@Autowired
	SqlSessionTemplate template;
	
	@Transactional
	@Override
	public List<Member> allMember() {
		List<Member> list = null;
		list = dao.selectAllMember(template);
		return list;
	}
	
	@Transactional
	@Override
	public Member login(String id, String password) {
		Member user = null;
		user = dao.selectByIdMember(template, id);
		if(user.getMemPassword().equals(password))
			return user;
		else
			return null;
	}
	
	@Transactional
	@Override
	public int delete(String id, String password) {
		int result = 0;
		result = dao.deleteMember(template, id, password);
		return result;
	}
	
	@Transactional
	@Override
	public int join(Member member) {	
		int result = 0;
		result = dao.insertMember(template, member);
		logger.trace("객체 로그인: {}", member);
		return result;
	}
	
	@Transactional
	@Override
	public int update(Member member) {
		int result = 0;
		result = dao.updateMember(template, member);
		return result;
	}
	
	@Transactional
	@Override
	public String find(String name,String email) {
		String member = null;
		member =  dao.selectId(template, name, email);
		return member;
	}
	@Override
	public Member findmember(String id, String name, String email) {

		Member user = null;
		user = dao.selectByIdMember(template, id);
		if(user.getMemName().equals(name)){
			if(user.getMemEmail().equals(email))
				return user;
			else
				return null;
		}
		else
			return null;
	}
	@Override
	public Member Search(String id) {
		Member user = null;
		user = dao.selectByIdMember(template, id);
		return user;
	}

	@Override
	public int updateNp(Member member) {
		int result = 0;
		result = dao.updateMemberNp(template, member);
		return result;
	}
	@Override
	public Member selectByIdMemberJoinRegistHouse(String memId) {
		Member list = null;
		 list = dao.selectByIdMemberJoinRegistHouse(template, memId);
		return list;
	}
	@Override
	public Member selectByIdMemberJoinHouse(String memId) {
		Member list = null;
		 list = dao.selectByIdMemberJoinHouse(template, memId);
		return list;
	}

	@Override
	public List<Member> memberPaging(int page) {
		List<Member> list = null;
		list = dao.memberPaging(template, page);
		return list;
	}

	@Override
	public int delelteById(String memId) {
		int result = 0;
		result = dao.deleteMemberById(template, memId);
		return result;
	}
}
