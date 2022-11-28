package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FaqVO {

	private String faq_title; 	// 글 제목
	private String faq_writer; 	// 글 서브 제목
	private String faq_img; 	// 글 이미지
	private String faq_content; // 글 내용
	private String faq_date; 	// 글 작성일자
	private String faq_tag1;	// 해시태그 1
	private String faq_tag2;	// 해시태그 2
	private String faq_tag3;	// 해시태그 3

	// 업로드 이미지
	private String faq_name;
	private String faq_realname;
	private long faq_fsize;

	// *************************************************
	MultipartFile file; // ***************************
						// 화면에서 type='file' name='file' 이라서 변수명이 file

	private int faq_seq; // 글 번호

	public int getFaq_seq() {
		return faq_seq;
	}

	public void setFaq_seq(int faq_seq) {
		this.faq_seq = faq_seq;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_writer() {
		return faq_writer;
	}

	public void setFaq_writer(String faq_writer) {
		this.faq_writer = faq_writer;
	}

	public String getFaq_img() {
		return faq_img;
	}

	public void setFaq_img(String faq_img) {
		this.faq_img = faq_img;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public String getFaq_date() {
		return faq_date;
	}

	public void setFaq_date(String faq_date) {
		this.faq_date = faq_date;
	}

	public String getFaq_name() {
		return faq_name;
	}

	public void setFaq_name(String faq_name) {
		this.faq_name = faq_name;
	}

	public String getFaq_realname() {
		return faq_realname;
	}

	public void setFaq_realname(String faq_realname) {
		this.faq_realname = faq_realname;
	}

	public long getFaq_fsize() {
		return faq_fsize;
	}

	public void setFaq_fsize(long faq_fsize) {
		this.faq_fsize = faq_fsize;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일이 있을 경우
		if (!file.isEmpty()) {

			this.faq_name = file.getOriginalFilename();
			this.faq_fsize = file.getSize();

			UUID uuid = UUID.randomUUID();
			// 삽입 된 이미지를 이미지명으로 저장해놓았을 경우,
			// 이미지 삭제 시 중복 된 이미지명이 전부 삭제되므로 이미지명에 랜덤 값 붙임.
			this.faq_realname = uuid.toString() + "_" + faq_name;

			// 파일 경로 지정하여 추가 된 파일의 이름을 b_realfname으로 지정
			File f = new File("C:\\springweb\\petdo\\src\\main\\webapp\\resources\\images\\" + faq_realname);
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대 경로로 수정하기
			try {
				file.transferTo(f); // 파일 데이터를 지정한 f에 저장
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}
	
	public String getFaq_tag1() {
		return faq_tag1;
	}

	public void setFaq_tag1(String faq_tag1) {
		this.faq_tag1 = faq_tag1;
	}

	public String getFaq_tag2() {
		return faq_tag2;
	}

	public void setFaq_tag2(String faq_tag2) {
		this.faq_tag2 = faq_tag2;
	}

	public String getFaq_tag3() {
		return faq_tag3;
	}

	public void setFaq_tag3(String faq_tag3) {
		this.faq_tag3 = faq_tag3;
	}
	
	

}
