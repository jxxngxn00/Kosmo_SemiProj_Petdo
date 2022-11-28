package com.javaclass.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	private String user_id;				//사용자 아이디
	private String user_pwd;			//사용자 비밀번호
	private String user_name;			//사용자 이름
	private String user_phone;		//사용자 휴대폰 번호
	private String user_email;			//사용자 이메일 주소
	private String user_address1;	//사용자 주소(우편번호)
	private int user_role;				//사용자 역할? 이게 뭐지
	private String user_grade;			//사용자 등급
	private String user_insertdate;	//가입 날짜
	

}
