package com.javaclass.domain;

import lombok.Data;

@Data
public class ReturnVO {
	
	private String state;
	private Integer refund_number;
	private String refund_reason;
	private String refund_reason_detail;
	private String user_id;
	private Integer order_detail_number;
	
}
