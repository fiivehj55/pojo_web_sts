package com.example.service;

import java.util.List;

import com.example.dto.House;
import com.example.dto.Member;


public interface MemberService {
	public Member login(String id,String password);
	public Member findmember(String id,String name,String email);
	public int join(Member member);
	public int update(Member member);
	public int updateNp(Member member);
	public int delete(String id,String password);
	public List<Member> allMember();
	public String find(String name,String email);
	public Member Search(String id);
	Member selectByIdMemberJoinRegistHouse(String memId);
	/*List<Member> selectByIdMemberJoinHouse( String memId);*/
	List<House> selectByIdMemberJoinHouse( String memId);
}
