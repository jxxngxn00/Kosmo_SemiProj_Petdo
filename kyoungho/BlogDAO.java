package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.NoticeVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.domain.ReplyVO;

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
	
	//댓글 등록
	int insertReply(ReplyVO vo);
	//댓글 수정
	void updateReply(ReplyVO vo);
	//댓글 삭제
	void deleteReply(Integer rno);
	//댓글 조회
	List<ReplyVO> getReply(Integer bno);
	
	/* 공지사항 */
	// 글 목록 조회
	List<NoticeVO> getNoticeList();
	// 글 등록
	void insertNotice(NoticeVO vo);
	
	//글 상세조회
	NoticeVO getNotice(NoticeVO vo);
	
	//글 수정
	void updateNotice(NoticeVO vo);
	
	//글 삭제
	void deleteNotice(NoticeVO vo);
}
