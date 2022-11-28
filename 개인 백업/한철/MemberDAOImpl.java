package com.javaclass.dao;

import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	// sqlSession 객체를 스프링에서 생성하여 주입시켜준다.
	// 의존관계 주입(Dependency injection, DI)
	// 느스한 결함
	// IoC (Inversion of Control, 제어의 역전)
	@Autowired
	SqlSession sqlSession;
	
	// 01. 전체 회원 목록 조회
	
	
	// 02. 회원 등록
	
	@Override
	public void insetMember(MemberVO vo) {
		sqlSession.insert("member.insertMember", vo);
	}
	// 03. 회원 정보 상세 조회
	
	
	@Override
	public MemberVO viewMember(String user_id) {
		return sqlSession.selectOne("member.viewMember", user_id);
	}
	
	
	@Override
	public void deletMember(String user_id) {
		
	}
	

	@Override
	public void updateMember(MemberVO vo) {
		
	}
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		return mybatis.insert("user.userInsert", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.memberLogin", vo);
	}

	public List<MemberVO> memberList() {
		return mybatis.selectList("admin.memberList");
	}

	public void insetMember1(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	public MemberVO viewMember(Object user_id) {
		// TODO Auto-generated method stub
		return null;
	}


}
