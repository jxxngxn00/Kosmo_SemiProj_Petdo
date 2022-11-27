package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewVO {
	
	Integer review_seq;			// review 글 번호
	
	Integer product_number;		// 해당하는 상품 번호
	String product_name;			// 해당하는 상품 이름
	String review_writer;		// 작성자
	String review_content;		// 내용
	String review_date;			// 작성 일자
	
	// 업로드 이미지
	String review_name;			// 등록 파일명
	String review_realname;		// 수정 될 파일명
	Long review_size;			// 이미지 사이즈
	
	// *************************************************
	MultipartFile file;

	

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
