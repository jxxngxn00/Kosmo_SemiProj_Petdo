package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.ExchangeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReturnVO;

public interface OrderService {

	//주문 내역 입력
	public int orderInsert(OrderVO vo);
	
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
	
	//환불사유
	public ReturnVO rReason(Integer order_detail_number);
	//교환사유
	public ExchangeVO eReason(Integer order_detail_number);

	//배송완료
	public void confirm(Integer order_detail_number);
	
	//배송상태 준비중-> 배송중 변경
	public void change(Integer order_detail_number);
	
	//환불/교환 승인
	public void accept(Integer order_detail_number);
	
	//환불/교환 거절
	public void reject(Integer order_detail_number);
}
