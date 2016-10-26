package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReplyDao;
import com.example.dto.QuestionToReply;
import com.example.dto.Reply;

@Component
public class ReplyServiceImp implements ReplyService{
	@Autowired
	ReplyDao dao;
	@Autowired
	SqlSessionTemplate template;
	@Override
	public List<Reply> selectAllReply() {
		return	dao.selectAllReply(template);
	}
	@Override
	public Reply selectByReplyNo(int replyNo) {
		return	dao.selectByIdReplyNo(template, replyNo);
	}
	@Override
	public List<Reply> selectByHouseNo(int houseNo) {
		return dao.selecyByIdHouseNo(template, houseNo);
	}
	@Transactional
	@Override
	public int insertReply(Reply reply) {
		return dao.insertReply(template, reply);
	}
	@Transactional
	@Override
	public int updateReply(Reply reply) {
		return dao.updateReply(template, reply);
	}
	@Transactional
	@Override
	public int deleteReply(int replyNo) {
		return dao.deleteReply(template, replyNo);
	}
	@Transactional
	@Override
	public int deleteReplyHno(int houseNo) {
		return dao.deleteReplyHno(template, houseNo);
	}
	@Transactional
	@Override
	public Reply selectByHouseNo1(int houseNo) {
		return dao.selectByIdHouseNo1(template, houseNo);
	}
	@Override
	public List<Reply> htrPaging(Integer page) {
		List<Reply> result = dao.htrPaging(template, page);
		return result;
	}
	
}
