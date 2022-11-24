package com.javaclass.dao;

import com.javaclass.domain.MemberVO;

public interface MemberDAO {
	
	 //id 중복체트 기능 구현
	MemberVO  idCheck( MemberVO vo );
	
	
	  //회원가입기능 구현
	int memberInsert(MemberVO vo);
	
	
	 //로그인 확인 기능 구현
	MemberVO memberLogin(MemberVO vo);
	
	//회원 상세정보
	MemberVO getUserInfo(String user_id);
}
