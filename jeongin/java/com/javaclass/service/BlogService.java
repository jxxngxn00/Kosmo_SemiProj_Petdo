package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.QnaVO;

public interface BlogService {
	//게시판 CRUD 기능의 메소드 구현
	/* QnA */
	//글 등록
	void insertQna(QnaVO vo);
	
	// 글 수정
	void updateQna(QnaVO vo);

	// 글 삭제
	void deleteQna(QnaVO vo);

	// 글 상세 조회
	QnaVO getQna(QnaVO vo);

	// 글 목록 조회
	List<QnaVO> getQnaList(QnaVO vo);
	
	// 관리자 - 답변 등록
	void updateAnswer(QnaVO vo);
}
