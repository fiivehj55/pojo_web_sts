package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Reply> selecyByIdHouseNo(SqlSessionTemplate template, int houseNo) {
		String stmt = REPLY_MAP + "selectByHouseNo";
		return template.selectList(stmt, houseNo);
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

	@Override
	public int deleteReplyHno(SqlSessionTemplate template, int houseNo) {
		String stmt = REPLY_MAP + "deleteReplyHno";
		return template.update(stmt, houseNo);
	}

	@Override
	public Reply selectByIdHouseNo1(SqlSessionTemplate template, int houseNo) {
		String stmt = REPLY_MAP + "selectByHouseNo";
		return template.selectOne(stmt, houseNo);
	}

	@Override
	public List<Reply> htrPaging(SqlSessionTemplate template, int page) {
		String stmt = REPLY_MAP + "htrPaging";
		Map<String, Object> map = new HashMap<>();
		map.put("low",(page-1)*5+1);
		map.put("high",page*5);
		return template.selectList(stmt,map);
	}

}
