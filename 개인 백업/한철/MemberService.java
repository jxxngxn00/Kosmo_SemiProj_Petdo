package com.javaclass.service;

import java.util.List;

import javax.inject.Inject;

import com.javaclass.domain.MemberVO;

public interface MemberService {
	
	public MemberVO idCheck_Login(MemberVO vo);
	public int userInsert(MemberVO vo );
	List<MemberVO> memberList();
	void insetMember(MemberVO vo);
	MemberVO viewMember(MemberVO vo);
	<MemberVo> void deletMember(String user_id);

}
