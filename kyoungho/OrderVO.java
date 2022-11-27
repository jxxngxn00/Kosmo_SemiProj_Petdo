package com.javaclass.domain;

public class OrderVO {
	
	/* Order detail TB */
	int order_detail_number;		//주문 상세 번호
	int product_count;				//제품 개수
	int product_price;				//가격
	String order_detail_status;	//배송상태
	boolean refund_check;			//환불 가능 여부
	int product_number;				//상품번호
	String user_id;					//사용자 아이디

	/* User Order */
	int order_number;				//주문번호
	String order_date;				//주문날짜
	
	/* product */
	String product_name;			//상품이름
	
	/* user_info */
	String user_name;				//구매자 이름

	@Override
	public String toString() {
		return "OrderVO [order_detail_number=" + order_detail_number + ", product_count=" + product_count
				+ ", product_price=" + product_price + ", order_detail_status=" + order_detail_status
				+ ", refund_check=" + refund_check + ", product_number=" + product_number + ", user_id=" + user_id
				+ ", order_number=" + order_number + ", order_date=" + order_date + ", product_name=" + product_name
				+ ", user_name=" + user_name + "]";
	}
	//getter, setter 생성
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
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
	public boolean isRefund_check() {
		return refund_check;
	}
	public void setRefund_check(boolean refund_check) {
		this.refund_check = refund_check;
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
}
