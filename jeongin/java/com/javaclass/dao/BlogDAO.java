package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.QnaVO;

public interface BlogDAO {
	
	/* QnA */
	//글 등록
	void insertQna(QnaVO vo);
	
	//글 목록 불러오기
	List<QnaVO> getQnaList(QnaVO vo);
	
	//글 상세보기
	QnaVO getQna(QnaVO vo);
	
	//관리자 - 답변 등록
	void updateAnswer(QnaVO vo);
	
	//글 삭제
	void deleteQna(QnaVO vo);
	
	//글 수정
	void updateQna(QnaVO vo);
}
