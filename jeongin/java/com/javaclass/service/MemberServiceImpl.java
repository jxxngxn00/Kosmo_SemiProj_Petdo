package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.javaclass.dao.MemberDAOImpl;
import com.javaclass.domain.MemberVO;


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
}




