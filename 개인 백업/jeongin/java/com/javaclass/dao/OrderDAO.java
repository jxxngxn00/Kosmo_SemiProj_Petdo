package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.ExchangeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReturnVO;

public interface OrderDAO {
	
	//사용자 아이디에 따른 주문내역 목록 조회
	public List<OrderVO> getUserOrderList(String user_id); 
	
	//주문 내역 상세보기
	public OrderVO getUserOrder(Integer order_number);
	
	//주문내역목록 조회 -- 관리자
	public List<OrderVO> getOrderList();
	
	//환불신청
	public void refund(ReturnVO vo);
	
	//교환신청
	public void exchange(ExchangeVO vo);
}
