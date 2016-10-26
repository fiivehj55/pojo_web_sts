package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import com.example.dto.Reply;
import com.example.dto.ReportToReply;

public interface ReplyDao {
	List<Reply> selectAllReply(SqlSessionTemplate template);
	
	Reply selectByIdReplyNo(SqlSessionTemplate template, int replyNo);
	
	Reply selectByIdHouseNo1(SqlSessionTemplate template, int houseNo);
	
	List<Reply> selecyByIdHouseNo(SqlSessionTemplate template, int houseNo);
	
	int insertReply(SqlSessionTemplate template, Reply reply);
	
	int updateReply(SqlSessionTemplate template, Reply reply);
	
	int deleteReply(SqlSessionTemplate template, int replyNo);
	
	int deleteReplyHno(SqlSessionTemplate template, int houseNo);
	
	// 댓글 페이징
	List<Reply> htrPaging(SqlSessionTemplate template, int page);
}
