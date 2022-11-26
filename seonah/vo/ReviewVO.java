package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	
	Integer review_seq;			// review 글 번호
	
	Integer product_number;		// 해당하는 상품 번호
	String review_writer;		// 작성자
	String review_content;		// 내용
	String review_date;			// 작성 일자
	
	// 업로드 이미지
	String review_name;			// 등록 파일명
	String review_realname;		// 수정 될 파일명
	Long review_size;			// 이미지 사이즈
	
	// *************************************************
	MultipartFile file;

	
	public Integer getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(Integer review_seq) {
		this.review_seq = review_seq;
	}

	public Integer getProduct_number() {
		return product_number;
	}

	public void setProduct_number(Integer product_number) {
		this.product_number = product_number;
	}

	public void setReview_size(Long review_size) {
		this.review_size = review_size;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public String getReview_name() {
		return review_name;
	}

	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}

	public String getReview_realname() {
		return review_realname;
	}

	public void setReview_realname(String review_realname) {
		this.review_realname = review_realname;
	}

	public long getReview_size() {
		return review_size;
	}

	public void setReview_size(long review_size) {
		this.review_size = review_size;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.review_name = file.getOriginalFilename();
		this.review_size = file.getSize();

		UUID uuid = UUID.randomUUID();
		// 삽입 된 이미지를 이미지명으로 저장해놓았을 경우,
		// 이미지 삭제 시 중복 된 이미지명이 전부 삭제되므로 이미지명에 랜덤 값 붙임.
		this.review_realname = uuid.toString() + "_" + review_name;

		// 파일 경로 지정하여 추가 된 파일의 이름을 b_realfname으로 지정
		File f = new File("C:\\springweb\\petdo\\src\\main\\webapp\\resources\\images\\review\\" + review_realname);
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
