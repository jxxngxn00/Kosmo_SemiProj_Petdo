package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.OrderVO;


public interface OrderService {
	
	//주문 내역 입력
	public int orderInsert(OrderVO vo);

	//사용자에 따른 주문내역 조회
	public List<OrderVO> getUserOrderList(String user_id);
	
	//주문내역 상세조회
	public OrderVO getUserOrder(Integer order_number);
	
	//관리자 -- 주문내역조회
	public List<OrderVO> getOrderList();
}
