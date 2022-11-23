package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ImageVO {
	
	private int file_number;	//파일번호
	private String origin_file_name;	//원래 파일이름
	private String stored_file_name;	//저장된 파일이름
	private String stored_file_thumbnail;	//저장된 파일 썸네일
	private String delegate_thumbnai; 		//대표 파일 썸네일
	private long file_size; 				//파일 크기
	private String create_date; 			//파일 생성날짜
	private boolean delete_check;			//파일 삭제여부
	private int  product_number;			//상품 번호
	
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
	
	
	
	
	public int getFile_number() {
		return file_number;
	}
	public void setFile_number(int file_number) {
		this.file_number = file_number;
		
	}
	public String getOrigin_file_name() {
		return origin_file_name;
	}
	public void setOrigin_file_name(String origin_file_name) {
		this.origin_file_name = origin_file_name;
	}
	public String getStored_file_name() {
		return stored_file_name;
	}
	public void setStored_file_name(String stored_file_name) {
		this.stored_file_name = stored_file_name;
	}
	public String getStored_file_thumbnail() {
		return stored_file_thumbnail;
	}
	public void setStored_file_thumbnail(String stored_file_thumbnail) {
		this.stored_file_thumbnail = stored_file_thumbnail;
	}
	public String getDelegate_thumbnai() {
		return delegate_thumbnai;
	}
	public void setDelegate_thumbnai(String delegate_thumbnai) {
		this.delegate_thumbnai = delegate_thumbnai;
	}
	public long getFile_size() {
		return file_size;
	}
	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public boolean isDelete_check() {
		return delete_check;
	}
	public void setDelete_check(boolean delete_check) {
		this.delete_check = delete_check;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	
	
	

}
