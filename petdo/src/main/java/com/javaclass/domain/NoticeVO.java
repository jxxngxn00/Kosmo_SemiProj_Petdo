package com.javaclass.domain;

public class NoticeVO {
	int notify_seq;				//공지사항 글 번호
	String notify_title;			//공지사항 글 제목
	String notify_writer;		//글 작성자 : 글쓴이의 아이디
	String notify_content;		//글 세부내용
	String notify_date;			//글 작성일자
	String nDate;				//글 작성일자 (날짜만)
	String nTime;				//글 작성시간 (시간만)
	
	
	//setter, getter 생성
	public int getNotify_seq() {
		return notify_seq;
	}
	public void setNotify_seq(int notify_seq) {
		this.notify_seq = notify_seq;
	}
	public String getNotify_title() {
		return notify_title;
	}
	public void setNotify_title(String notify_title) {
		this.notify_title = notify_title;
	}
	public String getNotify_writer() {
		return notify_writer;
	}
	public void setNotify_writer(String notify_writer) {
		this.notify_writer = notify_writer;
	}
	public String getNotify_content() {
		return notify_content;
	}
	public void setNotify_content(String notify_content) {
		this.notify_content = notify_content;
	}
	public String getNotify_date() {
		return notify_date;
	}
	public void setNotify_date(String notify_date) {
		this.notify_date = notify_date;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	public String getnTime() {
		return nTime;
	}
	public void setnTime(String nTime) {
		this.nTime = nTime;
	}
	
	
}
