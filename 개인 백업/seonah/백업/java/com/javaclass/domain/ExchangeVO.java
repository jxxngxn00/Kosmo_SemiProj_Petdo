package com.javaclass.domain;



public class ExchangeVO {
	
	private String state;
	private Integer exchange_number;
	private String exchange_reason;
	private String exchange_reason_detail;
	private String user_id;
	private Integer order_detail_number;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getExchange_number() {
		return exchange_number;
	}
	public void setExchange_number(Integer exchange_number) {
		this.exchange_number = exchange_number;
	}
	public String getExchange_reason() {
		return exchange_reason;
	}
	public void setExchange_reason(String exchange_reason) {
		this.exchange_reason = exchange_reason;
	}
	public String getExchange_reason_detail() {
		return exchange_reason_detail;
	}
	public void setExchange_reason_detail(String exchange_reason_detail) {
		this.exchange_reason_detail = exchange_reason_detail;
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
