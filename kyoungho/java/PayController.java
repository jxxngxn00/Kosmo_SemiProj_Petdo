package com.javaclass.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/pay")
public class PayController {
	
	//장바구니로 이동
	@RequestMapping("/cart.do")
	public String cart() {		
		return "pay/cart";
	}

	//결제확인 화면으로 이동
	@RequestMapping("/checkout.do")
	public String checkout() {		
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
