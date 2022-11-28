package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.OrderDAO;
import com.javaclass.domain.OrderVO;


@Service("OrderService")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO orderDAO;
	
	//주문내역입력
	@Override
	public int orderInsert(OrderVO vo) {
		return orderDAO.orderInsert(vo);
	}
	
	
	// 사용자에 따른 주문내역목록 조회
	@Override
	public List<OrderVO> getUserOrderList(String user_id) {
		return orderDAO.getUserOrderList(user_id);
	}
	
	// 주문내역상세조회
	@Override
	public OrderVO getUserOrder(Integer order_number) {
		return orderDAO.getUserOrder(order_number);
	}

	// 주문내역목록 조회 -- 관리자
	public List<OrderVO> getOrderList() {
		return orderDAO.getOrderList();
	}

}
