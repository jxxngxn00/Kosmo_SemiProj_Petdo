package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.BlogDAO;
import com.javaclass.domain.NoticeVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.domain.ReplyVO;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDAO blogDAO;
	
	/**************QNA**************/
	
	//QnA에 글 등록
	@Override
	public void insertQna(QnaVO vo) {
		blogDAO.insertQna(vo);
	}

	//QnA 글 수정
	@Override
	public void updateQna(QnaVO vo) {
		blogDAO.updateQna(vo);
	}
	
	//QNA 글 삭제
	@Override
	public void deleteQna(QnaVO vo) {
		blogDAO.deleteQna(vo);
	}

	//QnA 글 상세조회 불러오기
	@Override
	public QnaVO getQna(QnaVO vo) {
		return blogDAO.getQna(vo);
	}

	//QnA 글 목록 불러오기
	public List<QnaVO> getQnaList(QnaVO vo) {
		return blogDAO.getQnaList(vo);
	}
	
	//관리자 - QnA 답변 등록
	@Override
	public void updateAnswer(QnaVO vo) {
		blogDAO.updateAnswer(vo);
	}
	
	//댓글 등록
	@Override
	public int insertReply(ReplyVO vo) {
		return blogDAO.insertReply(vo);
	}
	
	//댓글 수정
	@Override
	public void updateReply(ReplyVO vo) {
		blogDAO.updateReply(vo);
	}
	
	//댓글 삭제
	@Override
	public void deleteReply(Integer rno) {
		blogDAO.deleteReply(rno);
	}
	
	//댓글 조회
	@Override
	public List<ReplyVO> getReply() {
		return blogDAO.getReply();
	}
	
	/**************공지사항**************/
	
	//공지사항 글 목록 불러오기
	@Override
	public List<NoticeVO> getNoticeList() {
		return blogDAO.getNoticeList();
	}
	
	//공지사항 글 등록
	public void insertNotice(NoticeVO vo) {
		blogDAO.insertNotice(vo);
	}
	
	//공지사항 글 세부조회
	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return blogDAO.getNotice(vo);
	}
	
	//공지사항 글 수정
	@Override
	public void updateNotice(NoticeVO vo) {
		blogDAO.updateNotice(vo);
	}
	
	//공지사항 글 삭제
	@Override
	public void deleteNotice(NoticeVO vo) {
		blogDAO.deleteNotice(vo);
	}

}
