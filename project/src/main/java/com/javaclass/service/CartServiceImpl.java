package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.CartDAO;
import com.javaclass.domain.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;


	//장바구니 추가
	public void cartInsert(CartVO vo) {
		cartDAO.cartInsert(vo);
	};

	//장바구니 목록
	public List<CartVO> listCart(String user_id){
		return cartDAO.listCart(user_id);
	};

	//장바구니 삭제
	public void deleteCart(int cart_number) {
		cartDAO.deleteCart(cart_number);
	};

	//장바구니 수정
	public void modifyCart(CartVO vo) {
		cartDAO.modifyCart(vo);
	};

	//장바구니 금액 합계
	public int sumCartMoney(String user_id) {
		return cartDAO.sumCartMoney(user_id);
	}; 

	//장바구니 동일한 상품 확인
	public int countCart(int product_number, String user_id) {
		return cartDAO.countCart(product_number, user_id);
	};

	//장바구니 상품 수량 변경
	public void updateCart(CartVO vo) {
		cartDAO.updateCart(vo);
	};


}
