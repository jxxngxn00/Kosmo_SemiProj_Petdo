package com.javaclass.domain;

public class QnaVO {
	int qna_seq;				//qna 글 번호
	String qna_title;			//qna 글 제목
	String qna_writer;		//글 작성자 : 글쓴이의 아이디
	String qna_content;		//글 세부내용
	String qna_date;			//글 작성일자
	String qDate;				//글 작성일자 (날짜만)
	String qTime;				//글 작성시간 (시간만)
	
	String answer_title;		//답변 제목
	String answer_content;//답변 내용
	
	public int getQna_seq() {
		return qna_seq;
	}
	public String getqDate() {
		return qDate;
	}
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	public String getqTime() {
		return qTime;
	}
	public void setqTime(String qTime) {
		this.qTime = qTime;
	}
	public void setQna_seq(int qna_seq) {
		this.qna_seq = qna_seq;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_writer() {
		return qna_writer;
	}
	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_date() {
		return qna_date;
	}
	public void setQna_date(String qna_date) {
		this.qna_date = qna_date;
	}
	
	public String getAnswer_title() {
		return answer_title;
	}
	public void setAnswer_title(String answer_title) {
		this.answer_title = answer_title;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	@Override
	public String toString() {
		return "QnaVO [qna_seq=" + qna_seq + ", qna_title=" + qna_title + ", qna_writer=" + qna_writer
				+ ", qna_content=" + qna_content + ", qna_date=" + qna_date + "]";
	}
}
