package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.FaqDAO;
import com.javaclass.domain.FaqVO;


@Service("faqService")
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqDAO faqDAO;

	// 글 등록
	public void insertFaqBoard(FaqVO faqVO) {
		faqDAO.insertFaqBoard(faqVO);
	}

	// 글 수정
	public void updateFaqBoard(FaqVO faqVO) {
		faqDAO.updateFaqBoard(faqVO);
	}

	// 글 삭제
	public void deleteFaqBoard(FaqVO faqVO) {
		faqDAO.deleteFaqBoard(faqVO);
	}

	// 해당 게시글 조회
	public FaqVO selectFaqBoard(FaqVO faqVO) {
		return faqDAO.selectFaqBoard(faqVO);
	}

	// FAQ 게시글 리스트 조회
	public List<FaqVO> getFaqBoardList(FaqVO faqVO) {
		return faqDAO.getFaqBoardList(faqVO);
	}


}