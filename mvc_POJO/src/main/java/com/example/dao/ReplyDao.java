package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.Reply;

public interface ReplyDao {
	List<Reply> selectAllReply(SqlSessionTemplate template);
	
	Reply selectByIdReplyNo(SqlSessionTemplate template, int replyNo);
	
	List<Reply> selecyByIdHouseNo(SqlSessionTemplate template, int HouseNo);
	
	int insertReply(SqlSessionTemplate template, Reply reply);
	
	int updateReply(SqlSessionTemplate template, Reply reply);
	
	int deleteReply(SqlSessionTemplate template, int replyNo);
}
