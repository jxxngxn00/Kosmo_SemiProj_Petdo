package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.NoticeVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.domain.ReplyVO;

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
	

	//댓글 등록
	@Override
	public int insertReply(ReplyVO vo) {
		return mybatis.insert("blogDAO.insertReply",vo);
	}
	
	//댓글 수정
	@Override
	public void updateReply(ReplyVO vo) {
		mybatis.update("blogDAO.updateReply", vo);
	}

	//댓글 삭제
	@Override
	public void deleteReply(Integer rno) {
		mybatis.selectList("blogDAO.deleteReply",rno);
	}

	//댓글 조회
	@Override
	public List<ReplyVO> getReply(Integer bno) {
		List<ReplyVO> list =mybatis.selectList("blogDAO.selectAllReply", bno);
		return list;
	}

	/**************공지사항**************/
	
	//공지사항 글 목록 불러오기
	@Override
	public List<NoticeVO> getNoticeList() {
		return mybatis.selectList("blogDAO.selectAllNotice");
	}
	
	//공지사항 글 등록
	@Override
	public void insertNotice(NoticeVO vo) {
		mybatis.insert("blogDAO.insertNotice",vo);
	}
	
	//공지사항 글 세부조회
	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return mybatis.selectOne("blogDAO.selectNotice",vo);
	}
	
	//공지사항 글 수정
	@Override
	public void updateNotice(NoticeVO vo) {
		mybatis.update("blogDAO.updateNotice",vo);
	}
	
	//공지사항 글 삭제
	@Override
	public void deleteNotice(NoticeVO vo) {
		mybatis.delete("blogDAO.deleteNotice",vo);
	}


}
