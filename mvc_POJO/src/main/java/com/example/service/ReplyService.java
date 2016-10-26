package com.example.service;

import java.util.List;

import com.example.dto.Reply;
import com.example.dto.ReportToReply;

public interface ReplyService {

	List<Reply> selectAllReply();
	
	Reply selectByReplyNo(int replyNo);
	
	Reply selectByHouseNo1(int houseNo);
	
	List<Reply> selectByHouseNo(int houseNo);
	
	int insertReply(Reply reply);
	
	int updateReply(Reply reply);
	
	int deleteReply(int replyNo);
	
	int deleteReplyHno(int houseNo);
	
	List<Reply> htrPaging(Integer page);
}

