package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.Member;


public interface MemberDao {
	List<Member> selectAllMember(SqlSessionTemplate template);
	
	Member selectByIdMember(SqlSessionTemplate template, String memId);
	String selectId(SqlSessionTemplate template,String name,String email);
	int insertMember(SqlSessionTemplate template, Member member);
	
	int updateMember(SqlSessionTemplate template, Member member);
	
	int deleteMember(SqlSessionTemplate template, String memId, String memPassword);
	
}
