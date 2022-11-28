package com.javaclass.domain;

import lombok.Data;

@Data
public class ExchangeVO {
	
	private String state;
	private Integer exchange_number;
	private String exchange_reason;
	private String exchange_reason_detail;
	private String user_id;
	private Integer order_detail_number;
	
}
