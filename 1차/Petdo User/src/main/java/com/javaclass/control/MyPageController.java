package com.javaclass.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	//마이페이지 - 주문내역 페이지로 이동
	@RequestMapping("/mOrder.do")
	public String mOrder() {		
		return "myPage/mOrder";
	}
	
	//주문내역 상세보기 페이지로 이동
	@RequestMapping("/mOrderDetail.do")
	public String mOrderDetail() {			
		return "myPage/mOrderDetail";
	}
	
	// 환불/교환 신청 입력폼 페이지로 이동
	@RequestMapping("/return.do")
	public String returnExchange() {		
		return "myPage/return";
	}

	// 계정관리 페이지로 이동
	@RequestMapping("/account.do")
	public String account() {		
		return "myPage/account";
	}

	// 계정관리 페이지로 이동
	@RequestMapping("/accountModify.do")
	public String accountModify() {		
		return "myPage/accountModify";
	}
	
	
	
	
}
