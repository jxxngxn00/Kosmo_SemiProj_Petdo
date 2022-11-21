package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.QnaVO;

@Repository("blogDAO")
class BlogDAOImpl implements BlogDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//QNA 글 등록
	@Override
	public void insertQna(QnaVO vo) {
		System.out.println("-----Mybatis insertQna 실행");
		mybatis.insert("blogDAO.insertQna",vo);
	}

	//QNA 글 목록
	public List<QnaVO> getQnaList(QnaVO vo) {
		System.out.println("-----Mybatis getQnaList 실행");
		return mybatis.selectList("blogDAO.selectAllQna");
	}
	
	//QNA 글 상세보기
	public QnaVO getQna(QnaVO vo) {
		System.out.println("-----Mybatis getQna 실행");
		return mybatis.selectOne("blogDAO.selectQna", vo);
	}

	//관리자 - QnA 답글 등록
	@Override
	public void updateAnswer(QnaVO vo) {
		mybatis.update("blogDAO.updateAnswer",vo);
	}
	
	//관리자 - QNA 글 삭제
	@Override
	public void deleteQna(QnaVO vo) {
		mybatis.update("blogDAO.deleteQna",vo);
	}
	
	//QNA 글 수정
	@Override
	public void updateQna(QnaVO vo) {
		mybatis.update("blogDAO.updateQna",vo);
	}

}
