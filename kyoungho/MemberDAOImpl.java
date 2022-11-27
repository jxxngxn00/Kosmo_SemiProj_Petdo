package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReviewVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//아이디 중복체크
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}
	
	//회원가입
	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		return mybatis.insert("user.userInsert", vo);
	}

	//로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.memberLogin", vo);
	}
	
	/*************************/
	//회원정보 상세보기 (사용자)
	public MemberVO getUserInfo(String user_id) {
		System.out.println("===> MemberMapper getUserInfo 호출");
		return mybatis.selectOne("user.getUserInfo", user_id);
	}

	//회원정보 수정
	public MemberVO updateInfo(MemberVO vo) {
		return mybatis.selectOne("user.getUserInfo", vo);
	}


	//회원정보 삭제
	public MemberVO deleteInfo(MemberVO vo) {
		return mybatis.selectOne("user.getUserInfo", vo);
	}
	
	/*************************/
	//회원정보 목록보기(관리자)
	public List<MemberVO> memberList(){
		return mybatis.selectList("user.memberList");
	}
	
	//회원정보 상세보기:회원정보(관리자)
	@Override
	public MemberVO getUserInfoAdmin(String user_id) {
		return mybatis.selectOne("user.getUserInfoAdmin", user_id);
	}
	
	//회원정보 상세보기:리뷰내역(관리자)
	@Override
	public List<ReviewVO> getReviewAdmin(String user_id) {
		return mybatis.selectList("user.getReviewInfoAdmin", user_id);
	}

	//회원정보 상세보기:주문내역(관리자)
	@Override
	public List<OrderVO> getOrderAdmin(String user_id) {
		return mybatis.selectList("user.getOrderInfoAdmin", user_id);
	}


}
