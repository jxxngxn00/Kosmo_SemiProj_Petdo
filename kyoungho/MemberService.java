package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReviewVO;

public interface MemberService {
	
	public MemberVO idCheck_Login(MemberVO vo);
	public int userInsert(MemberVO vo );
	public MemberVO getUserInfo(String user_id);
	//전체 회원 목록 조회 (관리자)
	public List<MemberVO> memberList();

	//회원 상세정보:회원정보(관리자)
	public MemberVO getUserInfoAdmin(String user_id);
	
	//회원 상세정보:리뷰내역(관리자)
	public List<ReviewVO> getReviewAdmin(String user_id);
	
	//회원 상세정보:주문내역(관리자)
	public List<OrderVO> getOrderAdmin(String user_id);
	

	//회원정보 수정
	public MemberVO updateInfo(MemberVO vo);

	//회원정보 삭제
	public MemberVO deleteInfo(MemberVO vo);

}
