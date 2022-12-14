package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.ExchangeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReturnVO;

public interface OrderService {

	//사용자에 따른 주문내역 조회
	public List<OrderVO> getUserOrderList(String user_id);
	
	//주문내역 상세조회
	public OrderVO getUserOrder(Integer order_number);
	
	//관리자 -- 주문내역조회
	public List<OrderVO> getOrderList();
	
	//환불신청
	public void refund(ReturnVO vo);

	//교환신청
	public void exchange(ExchangeVO vo);
}
