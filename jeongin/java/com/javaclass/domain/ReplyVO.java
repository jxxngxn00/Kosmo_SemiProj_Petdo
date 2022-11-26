package com.javaclass.domain;

public class ReplyVO {
	private int rno;				// 댓글번호
	private int bno;				// 게시글번호 ( 댓글이 달릴 게시글 )
	private String reply;			// 댓글내용
	private String replyer;		// 댓글작성자
	private String replydate;	// 댓글작성일

	private String rDate;		// 댓글 작성 시간
	private String rTime;		// 댓글 작성 날짜
	
	//toString
	@Override
	public String toString() {
		return "ReplyVO [rno=" + rno + ", bno=" + bno + ", reply=" + reply + ", replyer=" + replyer + ", replydate="
				+ replydate + "]";
	}
	
	//getter, setter
	public String getrDate() {
		return rDate;
	}
	
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	
	public String getrTime() {
		return rTime;
	}
	
	public void setrTime(String rTime) {
		this.rTime = rTime;
	}
	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	
	
	
}
