package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.MemberDAOImpl;
import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReviewVO;


@Service
public class MemberServiceImpl implements MemberService {


	@Autowired
	private MemberDAOImpl memberDAO; 

	//ID 중복체크 +  로그인
	public MemberVO idCheck_Login( MemberVO vo){
		return memberDAO.idCheck(vo);
	}

	//회원가입
	public int userInsert(MemberVO vo ){
		return memberDAO.memberInsert(vo);
	}

	//회원 상세정보 조회
	public MemberVO getUserInfo(String user_id) {
		return memberDAO.getUserInfo(user_id);
	}

	//전체 회원 목록 조회 (관리자)
	public List<MemberVO> memberList(){
		return memberDAO.memberList();
	}
	
	//회원상세조회 : 회원정보 (관리자)
	@Override
	public MemberVO getUserInfoAdmin(String user_id) {
		return memberDAO.getUserInfoAdmin(user_id);
	}
	
	//회원상세조회 : 리뷰내역 (관리자)
	@Override
	public List<ReviewVO> getReviewAdmin(String user_id) {
		return memberDAO.getReviewAdmin(user_id);
	}

	//회원상세조회 : 주문내역 (관리자)
	@Override
	public List<OrderVO> getOrderAdmin(String user_id) {
		return memberDAO.getOrderAdmin(user_id);
	}

	//회원정보 수정
	public int updateInfo(MemberVO vo) {
		//System.out.println(">>>>>>update : "+vo);
		return memberDAO.updateInfo(vo);
	}


	//회원정보 삭제
	public int deleteInfo(MemberVO vo) {
		return memberDAO.deleteInfo(vo);
	}
}


