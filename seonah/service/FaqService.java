package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.FaqVO;


public interface FaqService {

	// 게시물 등록
		void insertFaqBoard(FaqVO faqvo);	
		
	// 게시물 수정
		void updateFaqBoard(FaqVO faqvo);		
		
	// 게시물 삭제
		void deleteFaqBoard(FaqVO faqvo);		
		
	// 검색한 해당 게시물 조회
		FaqVO selectFaqBoard(FaqVO faqvo);		

	// 게시물 리스트 조회
		List<FaqVO> getFaqBoardList(FaqVO faqvo);		
}
