package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.OrderVO;

public interface OrderDAO {
	
	//주문내역 입력
	int orderInsert(OrderVO vo);
	
	//주문자 정보에 입력
	int orderUserInsert(OrderVO vo);
	
	//사용자 아이디에 따른 주문내역 목록 조회
	public List<OrderVO> getUserOrderList(String user_id); 
	
	//주문 내역 상세보기
	public OrderVO getUserOrder(Integer order_number);
	
	//주문내역목록 조회 -- 관리자
	public List<OrderVO> getOrderList();
	
	
	
}
