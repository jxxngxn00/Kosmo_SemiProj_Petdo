package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.OrderVO;


@Repository("OrderDAO")
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//주문내역 입력
	@Override
	public int orderInsert(OrderVO vo) {
		System.out.println("===>  OrderMapper orderInsert() 호출 : "+ vo);
		return mybatis.insert("orderDAO.orderInsert",vo);
	};
	

	
	// 사용자에 따른 주문내역목록 조회
	@Override
	public List<OrderVO> getUserOrderList(String user_id) {
		return mybatis.selectList("orderDAO.selectAllByUser", user_id);
	}
	
	//주문내역 상세조회
	@Override
	public OrderVO getUserOrder(Integer order_number) {
		return mybatis.selectOne("orderDAO.selectByUser",order_number);
	}

	//관리자 -- 주문내역목록 조회
	@Override
	public List<OrderVO> getOrderList() {
		return mybatis.selectList("orderDAO.selectAllByAdmin");
	}

	
	

}
