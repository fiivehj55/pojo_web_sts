package com.example.service;

import java.util.List;

import com.example.dto.Reply;

public interface ReplyService {

	List<Reply> selectAllReply();
	
	Reply selectByReplyNo(int replyNo);
	
	int insertReply(Reply reply);
	
	int updateReply(Reply reply);
	
	int deleteReply(int replyNo);
}
