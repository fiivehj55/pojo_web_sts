package com.example.service;

import java.util.List;

import com.example.dto.Question;


//1:1 문의 게시판
public interface QuestionService {
	//문의 게시글 전체 긁어오기
	public List<Question> selectById(String memberId);
	//문의 게시글 추가
	public int insertQuestion(Question question);
	//문의 게시글 삭제 관리자만
	public int delete(int questNo);
	// 문의 게시글 넘버로 긁어오기
	public Question selectByNo(Integer questNo);
	// 문의 게시글 업데이트
	public int updateQuestion(Question question);
	// 문의 게시글 페이징
	public List<Question> selectByIdPage(String memberId, int page);
	
	// 문의 게시글 페이징
	public List<Question> selectByPage(int page);
}
