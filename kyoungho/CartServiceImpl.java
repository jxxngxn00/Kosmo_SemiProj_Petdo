package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.javaclass.dao.CartDAOImpl;
import com.javaclass.domain.CartVO;

public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDAOImpl cartDAO;

	
	public int cartInsert(CartVO vo) {
		return cartDAO.cartInsert(vo);
	}

}
