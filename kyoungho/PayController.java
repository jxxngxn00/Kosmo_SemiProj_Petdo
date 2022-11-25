package com.javaclass.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.CartVO;
import com.javaclass.service.CartService;


@Controller
@RequestMapping("/pay")
public class PayController {
	
//	//장바구니로 이동
//	@RequestMapping("/cart.do")
//	public String cart() {		
//		return "pay/cart";
//	}
	
	@Autowired
	private CartService cartService;

	//결제확인 화면으로 이동
	@RequestMapping("/checkout.do")
	public String checkout(CartVO vo, HttpSession session, Model m) {

		// 세션에 저장된 user_id
		String user_id = (String) session.getAttribute("login");
		vo.setUser_id(user_id);
		// 장바구니 정보
		List<CartVO> list = cartService.listCart(user_id);
		// 장바구니 전체 금액 호출
		int sumCartMoney = cartService.sumCartMoney(user_id);
		m.addAttribute("totalMoney", sumCartMoney);
		m.addAttribute("cartList", list);
		
		return "pay/checkout";
	}

	//계좌이체로 이동
	@RequestMapping("/moneytransfer.do")
	public String moneytransfer() {		
		return "pay/moneytransfer";
	}

	//실제 결제창으로 이동
	@RequestMapping("/payment.do")
	public String payment() {		
		return "pay/payment";
	}
	
	
	
	
}
