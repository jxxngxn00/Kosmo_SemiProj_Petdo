package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.javaclass.domain.CartVO;

public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	@Override
	public int cartInsert(CartVO vo) {
		System.out.println("===>  CartMapper cartInsert() 호출");
		return mybatis.insert("CartVO.cartInsert", vo);
	}

}
