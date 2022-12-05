package com.javaclass.domain;

import lombok.Data;

@Data
public class OrderVO {
	
	/* Order detail TB */
	int order_detail_number;		//주문 상세 번호
	int product_count;				//제품 개수
	int product_price;				//가격
	String order_detail_status;	//배송상태
	Integer refund_check;			//환불 가능 여부
	int product_number;				//상품번호
	String user_id;					//사용자 아이디
	String order_date;				//주문날짜
	
	/* product */
	String product_name;			//상품이름
	
	/* user_info */
	String user_name;				//구매자 이름
	
	//toString
	@Override
	public String toString() {
		return "OrderVO [order_detail_number=" + order_detail_number + ", product_count=" + product_count
				+ ", product_price=" + product_price + ", order_detail_status=" + order_detail_status
				+ ", refund_check=" + refund_check + ", product_number=" + product_number + ", user_id=" + user_id
				+", order_date=" + order_date + ", product_name=" + product_name
				+ ", user_name=" + user_name + "]";
	}
}
