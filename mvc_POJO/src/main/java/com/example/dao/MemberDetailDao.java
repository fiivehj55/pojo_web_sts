package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.MemberDetail;


public interface MemberDetailDao {
	
	List<MemberDetail> selectAllMemberDetail(SqlSessionTemplate template);
	
	MemberDetail selectByMemberDetail(SqlSessionTemplate template, int detailId);
	
	int insertMemberDetail(SqlSessionTemplate template, MemberDetail mDetail);
	
	int updateMemberDetail(SqlSessionTemplate template, MemberDetail mDetail);
	
	int deleteMemberDetail(SqlSessionTemplate template, int deltailId);
	
}
