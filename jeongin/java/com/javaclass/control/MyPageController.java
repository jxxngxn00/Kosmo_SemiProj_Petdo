package com.javaclass.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.service.MemberService;
import com.javaclass.service.OrderService;


@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	//마이페이지 - 주문내역 페이지로 이동
	@RequestMapping("/mOrder.do")
	public String mOrder(String user_id, Model m) {		
		List<OrderVO> list = orderService.getUserOrderList(user_id);
		m.addAttribute("userOrderList",list);
		return "myPage/mOrder";
	}
	
	//주문내역 상세보기 페이지로 이동
	@RequestMapping("/mOrderDetail.do")
	public String mOrderDetail(Integer order_number, Model m) {
		OrderVO vo = orderService.getUserOrder(order_number);
		m.addAttribute("userOrder", vo);
		return "myPage/mOrderDetail";
	}
	
	// 환불/교환 신청 입력폼 페이지로 이동
	@RequestMapping("/return.do")
	public String returnExchange() {		
		return "myPage/return";
	}

	// 회원정보 조회 페이지로 이동
	@RequestMapping("/account.do")
	public String account(String user_id, Model m) {	
		MemberVO vo = memberService.getUserInfo(user_id);
		m.addAttribute("userInfo", vo);
		return "myPage/account";
	}

	// 회원정보 수정 페이지로 이동
	@RequestMapping("/accountModify.do")
	public String accountModify(String user_id, Model m) {		
		MemberVO vo = memberService.getUserInfo(user_id);
		m.addAttribute("userInfo", vo);
		return "myPage/accountModify";
	}
	
	
	
	
}
