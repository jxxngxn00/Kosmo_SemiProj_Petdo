package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.FaqVO;

@Repository("FaqDAO")
public class FaqDAOImpl implements FaqDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 게시물 등록
		public void insertFaqBoard(FaqVO faqvo) {
			System.out.println("===> Mybatis insertFaqBoard() 호출");	
			mybatis.insert("FaqDAO.insertFaqBoard", faqvo);
		}
		
		// 게시물 수정
		  public void updateFaqBoard(FaqVO faqvo) {
		  System.out.println("===> Mybatis updateFaqBoard() 호출");
		  mybatis.update("FaqDAO.updateFaqBoard", faqvo); 
		  }
		  
		  // 게시물 삭제 
		  public void deleteFaqBoard(FaqVO faqvo) {
		  System.out.println("===> Mybatis deleteFaqBoard() 호출");
		  mybatis.delete("FaqDAO.deleteFaqBoard", faqvo); 
		  }
		
		  // 게시물 상세보기 
		  public FaqVO selectFaqBoard(FaqVO faqvo) {
		  System.out.println("===> Mybatis selectFaqBoard() 호출"); return (FaqVO)
		  mybatis.selectOne("FaqDAO.selectFaqBoard", faqvo); 
		  }
		
		  // 게시물 리스트 조회
		   public List<FaqVO> getFaqBoardList(FaqVO faqvo) {
		  System.out.println("===> Mybatis getFaqBoardList() 호출"); return
		  mybatis.selectList("FaqDAO.selectAllFaq", faqvo); 
		  }
		
}
