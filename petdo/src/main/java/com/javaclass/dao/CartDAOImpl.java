package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.CartVO;

@Repository("CartVO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	//장바구니 추가
	@Override
	public void cartInsert(CartVO vo) {
		System.out.println("===>  CartMapper cartInsert() 호출");
		mybatis.insert("CartVO.insertCart", vo);
		
	};
	
	//장바구니 목록
	public List<CartVO>  listCart(String user_id){
		System.out.println("===>  CartMapper listCart() 호출");
		return mybatis.selectList("CartVO.listCart", user_id);
	}; 
	
	//장바구니 삭제
	public void deleteCart(int cart_number) {
		System.out.println("===>  CartMapper deleteCart() 호출");
		mybatis.delete("CartVO.deleteCart", cart_number);
	};
		
	//장바구니 수정
	public void modifyCart(CartVO vo){
		System.out.println("===>  CartMapper modifyCart() 호출");
		mybatis.update("CartVO.modifyCart", vo);
	};
		
	//장바구니 금액 합계
	public int sumCartMoney(String user_id) {
		System.out.println("===>  CartMapper sumCartMoney() 호출");
		return mybatis.selectOne("CartVO.sumCartMoney", user_id);
	};
		
	//장바구니 동일한 상품 확인
	public int countCart(int product_number, String user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_number", product_number);
		map.put("user_id", user_id);
		System.out.println(product_number);
		System.out.println(user_id);
		System.out.println("===>  CartMapper countCart() 호출");
		return mybatis.selectOne("CartVO.countCart", map);
	};
	
	//장바구니 상품 수량 변경
	public void updateCart(CartVO vo) {
		System.out.println("===>  CartMapper updateCart() 호출");
		mybatis.update("CartVO.updateCart", vo);
	};
	



}
