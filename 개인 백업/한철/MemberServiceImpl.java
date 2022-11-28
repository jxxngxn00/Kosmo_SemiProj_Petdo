package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.MemberDAO;
import com.javaclass.dao.MemberDAOImpl;
import com.javaclass.domain.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	MemberDAO	 memberDao;
	
	
	private Object user_id;
	
	// 01. 전체 회원목록 조회
	@Override
	public List<MemberVO> memberList(){
		return memberDao.memberList();
	}
	
	// 02. 회원 등록
	@Override 
	public void insetMember (MemberVO vo) {
		memberDao.insetMember(vo);
	}
	// 03. 회원 정보 상세 조회
	public MemberVO viewMember(MemberVO vo) {
		return memberDao.viewMember(user_id);
	}
	
	@Override
	public void deletMember(String user_id) {
		
	}
	
	
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

		public List<MemberVO> admin_memberlist() {
			
			
			return null;
		}

		public MemberVO getInfo(String user_id) {
			// TODO Auto-generated method stub
			return null;
		}
}




