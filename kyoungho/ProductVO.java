package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {

	// product 테이블에 입력
	private Integer product_number;
	private String category_code;
	private String product_name;
	private int product_price;
	private int product_stock;
	private String product_desc;
	private String product_date;
	private int product_hits;
	//----------------------------------
	
	
	//Image 테이블에 입력
	private String origin_file_name;	//원래 파일이름
	private String stored_file_name;	//저장된 파일이름
	private long file_size; 				//파일 크기
	
	//*************************************************

	//화면에서 type='file' name='file'이라서 변수명이 file
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file =file;
		
		//
		if(!file.isEmpty()) {
			
			this.stored_file_name= file.getOriginalFilename();
			this.file_size = file.getSize();
			UUID uuid = UUID.randomUUID();
			this.origin_file_name = uuid.toString() + "_"+stored_file_name;
			
			File f = new File("D:\\springweb\\petdo\\src\\main\\webapp\\resources\\upload\\" + origin_file_name);
			//파일 저장 위치를 추후에 서버경로를 얻어서 상대경로로 수정하기 
				try {
					file.transferTo(f);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
	}
	
}