package com.example.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.example.dto.Reply;


@Component
public class ReplyDaoImpl implements ReplyDao {
	
	static Logger logger = LoggerFactory.getLogger(ReplyDaoImpl.class);

	
	private final String REPLY_MAP = "pojo.web.dao.ReplyMapper.";

	@Override
	public List<Reply> selectAllReply(SqlSessionTemplate template) {
		String stmt = REPLY_MAP + "selectAllReply";
		return template.selectList(stmt);
	}

	@Override
	public Reply selectByIdReplyNo(SqlSessionTemplate template, int replyNo) {
		String stmt = REPLY_MAP + "selectByReplyNo";
		return template.selectOne(stmt, replyNo);
	}
	
	@Override
	public List<Reply> selecyByIdHouseNo(SqlSessionTemplate template, int HouseNo) {
		String stmt = REPLY_MAP + "selectByHouseNo";
		return template.selectList(stmt, HouseNo);
	}

	@Override
	public int insertReply(SqlSessionTemplate template, Reply reply) {
		String stmt = REPLY_MAP + "insertReply";
		return template.update(stmt, reply);
	}

	@Override
	public int updateReply(SqlSessionTemplate template, Reply reply) {
		String stmt = REPLY_MAP + "updateReply";
		return template.update(stmt, reply);
	}

	@Override
	public int deleteReply(SqlSessionTemplate template, int replyNo) {
		String stmt = REPLY_MAP + "deleteReply";
		return template.update(stmt, replyNo);
	}

}
