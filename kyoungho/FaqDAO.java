package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.FaqVO;


public interface FaqDAO {
	
	// 게시물 등록
	public void insertFaqBoard(FaqVO faqVO);	
	
	// 게시물 수정
	public void updateFaqBoard(FaqVO faqVO);		
	
	// 게시물 삭제
	public void deleteFaqBoard(FaqVO faqVO);		
	
	// 해당 게시물 조회
	public FaqVO selectFaqBoard(FaqVO faqVO);		

	// 게시물 리스트 조회
	public List<FaqVO> getFaqBoardList(FaqVO faqVO);	
	
	
}
