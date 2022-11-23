package com.javaclass.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.CartVO;
import com.javaclass.domain.MemberVO;
import com.javaclass.service.CartService;

@RequestMapping(value="/pay")
public class CartController {
	
	
	@Autowired
	private CartService cartService;
	
	
	@RequestMapping(value="cart.do", produces="application/text;charset=utf-8")
	public String cartInsert(CartVO vo, HttpSession session) {
		System.out.println(vo.getCart_number());
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setUser_id(member.getUser_id());
		cartService.cartInsert(vo);
		return "/pay/cart";
	}
}
