package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.CartVO;

public interface CartService {
	
	//장바구니 추가
	public void cartInsert(CartVO vo);
	
	//장바구니 목록
	public List<CartVO> listCart(String user_id);
	
	//장바구니 삭제
	public void deleteCart(int cart_number);
	
	//장바구니 수정
	public void modifyCart(CartVO vo);
	
	//장바구니 금액 합계
	public int sumCartMoney(String user_id); 
	
	//장바구니 동일한 상품 확인
	public int countCart(int product_number, String user_id);
	
	//장바구니 상품 수량 변경
	public void updateCart(CartVO vo);

}
