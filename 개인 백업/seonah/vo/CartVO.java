package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class CartVO {
	private int cart_number;
	private int product_count;
	private int product_number;
	private String user_id;
	private String product_name;
	private int product_price;
	private int product_sum;
	private String origin_file_name; // 원래 파일이름
	private String stored_file_name; // 저장된 파일이름
	private long file_size; // 파일 크기

	private int totalMoney;
	MultipartFile file;

	// getter, setter

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.origin_file_name = file.getOriginalFilename();
		this.file_size = file.getSize();

		UUID uuid = UUID.randomUUID();
		this.stored_file_name = uuid.toString() + "_" + origin_file_name;

		File f = new File("C:\\springweb\\petdo\\src\\main\\webapp\\resources\\images\\shop\\" + stored_file_name);
		// 파일 저장 위치를 추후에 서버경로를 얻어서 상대경로로 수정하기
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

	public int getProduct_sum() {
		return product_sum;
	}

	public void setProduct_sum(int product_sum) {
		this.product_sum = product_sum;
	}

	public int getCart_number() {
		return cart_number;
	}

	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getProduct_number() {
		return product_number;
	}

	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}

	// 기본생성자
	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "CartVO [cart_number=" + cart_number + ", product_count=" + product_count + ", product_number="
				+ product_number + ", user_id=" + user_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", totalMoney=" + totalMoney + "]";
	}

}