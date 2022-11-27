package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReviewVO;

public interface MemberDAO {
	
	 //id 중복체트 기능 구현
	MemberVO  idCheck( MemberVO vo );
	
	
	  //회원가입기능 구현
	int memberInsert(MemberVO vo);
	
	
	 //로그인 확인 기능 구현
	MemberVO memberLogin(MemberVO vo);
	
	//회원 상세정보(사용자)
	MemberVO getUserInfo(String user_id);

	//회원정보 수정
	public MemberVO updateInfo(MemberVO vo);

	//회원정보 삭제
	public MemberVO deleteInfo(MemberVO vo);


	
	//회원목록 조회(관리자)
	public List<MemberVO> memberList();
	
	//회원 상세정보:회원정보(관리자)
	public MemberVO getUserInfoAdmin(String user_id);
	
	//회원 상세정보:리뷰내역(관리자)
	public List<ReviewVO> getReviewAdmin(String user_id);
	
	//회원 상세정보:주문내역(관리자)
	public List<OrderVO> getOrderAdmin(String user_id);
}
