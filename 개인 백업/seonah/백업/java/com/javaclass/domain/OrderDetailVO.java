package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class OrderDetailVO {
	
	private int product_number;				// 상품 번호
	private int product_count;				// 주문한 상품 갯수
	private int product_price;				// 상품 가격
	private String product_name;			// 상품 이름
	private String order_detail_status;		// 처리 상태
	private String refund_check;			// 환불 가능여부
	private String user_id;					// 주문한 고객 아이디
	private int order_detail_number;		// 주문 번호
	private String order_date;				// 구매 일자
	
	
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public int getOrder_detail_number() {
		return order_detail_number;
	}
	public void setOrder_detail_number(int order_detail_number) {
		this.order_detail_number = order_detail_number;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getOrder_detail_status() {
		return order_detail_status;
	}
	public void setOrder_detail_status(String order_detail_status) {
		this.order_detail_status = order_detail_status;
	}
	public String getRefund_check() {
		return refund_check;
	}
	public void setRefund_check(String refund_check) {
		this.refund_check = refund_check;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	

}
