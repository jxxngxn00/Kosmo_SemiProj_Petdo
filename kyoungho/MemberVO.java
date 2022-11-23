package com.javaclass.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String user_address1;
	private int user_role;
	private String user_grade;
	private String user_insertdate;
	
	

}
