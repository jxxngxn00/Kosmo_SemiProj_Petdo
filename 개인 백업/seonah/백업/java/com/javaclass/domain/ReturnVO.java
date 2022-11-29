package com.javaclass.domain;

public class ReturnVO {
	
	private Integer refund_number;
	private String refund_reason;
	private String refund_reason_detail;
	private String user_id;
	private Integer order_detail_number;
	
	private String state;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getRefund_number() {
		return refund_number;
	}
	public void setRefund_number(Integer refund_number) {
		this.refund_number = refund_number;
	}
	public String getRefund_reason() {
		return refund_reason;
	}
	public void setRefund_reason(String refund_reason) {
		this.refund_reason = refund_reason;
	}
	public String getRefund_reason_detail() {
		return refund_reason_detail;
	}
	public void setRefund_reason_detail(String refund_reason_detail) {
		this.refund_reason_detail = refund_reason_detail;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Integer getOrder_detail_number() {
		return order_detail_number;
	}
	public void setOrder_detail_number(Integer order_detail_number) {
		this.order_detail_number = order_detail_number;
	}

	
}
