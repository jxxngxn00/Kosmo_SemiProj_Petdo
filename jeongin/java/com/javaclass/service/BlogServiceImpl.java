package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.BlogDAO;
import com.javaclass.domain.QnaVO;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDAO blogDAO;
	
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

}
