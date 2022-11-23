package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;


public class ProductVO {
	
	
	private Integer product_number;
	private String product_name;
	private String category_code;
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
	
	
	//------------------
	public ProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ProductVO(String category_code, String product_name, int product_price, int product_stock,
			String product_desc, String product_date, int product_hits, String origin_file_name,
			String stored_file_name, long file_size, Integer product_number, MultipartFile file) {
		super();
		this.category_code = category_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.product_desc = product_desc;
		this.product_date = product_date;
		this.product_hits = product_hits;
		this.origin_file_name = origin_file_name;
		this.stored_file_name = stored_file_name;
		this.file_size = file_size;
		this.product_number = product_number;
		this.file = file;
	}
	


	// product 테이블에 입력
	
	public Integer getProduct_number() {
		return product_number;
	}

	public void setProduct_number(Integer product_number) {
		this.product_number = product_number;
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_stock() {
		return product_stock;
	}

	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public String getProduct_date() {
		return product_date;
	}

	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}

	public int getProduct_hits() {
		return product_hits;
	}

	public void setProduct_hits(int product_hits) {
		this.product_hits = product_hits;
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

	public long getFile_size() {
		return file_size;
	}

	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}
	
	@Override
	public String toString() {
		return "ProductVO [category_code=" + category_code + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_stock=" + product_stock + ", product_desc=" + product_desc
				+ ", product_date=" + product_date + ", product_hits=" + product_hits + ", origin_file_name="
				+ origin_file_name + ", stored_file_name=" + stored_file_name + ", file_size=" + file_size
				+ ", product_number=" + product_number + ", file=" + file + "]";
	}


	
	
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