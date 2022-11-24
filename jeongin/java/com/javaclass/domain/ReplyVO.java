package com.javaclass.domain;

import lombok.Data;

@Data
public class ReplyVO {
	private int rno;				// 댓글번호
	private int bno;				// 게시글번호 ( 댓글이 달릴 게시글 )
	private String reply;			// 댓글내용
	private String replyer;		// 댓글작성자
	private String replydate;	// 댓글작성일
}
