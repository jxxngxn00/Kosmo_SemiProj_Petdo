package com.javaclass.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.CartVO;
import com.javaclass.domain.MemberVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.OrderVOList;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;
import com.javaclass.service.CartService;
import com.javaclass.service.MemberService;
import com.javaclass.service.OrderService;
import com.javaclass.service.ProductService;


@Controller
@RequestMapping("/pay")
public class PayController {

	
	@Autowired
	private CartService cartService;		
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	
	//결제확인 화면으로 이동
	@RequestMapping("/checkout.do")
	public String checkout(CartVO vo, HttpSession session, Model m) {
		System.out.println(vo);
		// 세션에 저장된 user_id
		String user_id = (String) session.getAttribute("login");
		
		// 장바구니 정보
		List<CartVO> list = cartService.listCart(user_id);
		//System.out.println(vo.getCart_number()); 
		//System.out.println(list);
		
		MemberVO mVo = memberService.getUserInfo(user_id);
		m.addAttribute("userInfo", mVo);
		
		// 장바구니 전체 금액 호출
		int sumCartMoney = cartService.sumCartMoney(user_id);
		m.addAttribute("user_id", user_id);
		m.addAttribute("totalMoney", sumCartMoney);
		m.addAttribute("cartList", list);
		
		return "pay/checkout";
	}


	//실제결제 창으로 이동
	@RequestMapping("/payment.do")
	public String payment( CartVO vo, Model m,  HttpSession session) {
		// 세션에 저장된 user_id
		String user_id = (String) session.getAttribute("login");
		vo.setUser_id(user_id);
		System.out.println(vo);
		List<CartVO> list = cartService.listCart(user_id);
		System.out.println(vo.getUser_id());
		m.addAttribute("payList", list);
		return "pay/payment";
	}

	//실제 결제창으로 이동
	@RequestMapping("/moneytransfer.do")
	public String moneytransfer() {		
		return "pay/moneytransfer";
	}
	
	//체크아웃에 있던걸 DB에 저장 후 mOrder 페이지로 이동
	@RequestMapping("/orderInsert.do")
	public String orderInsert(String user_id, OrderVOList list, Model m){
		//System.out.println(user_id);
		for(OrderVO vo : list.getList()) {
			//System.out.println(">>>>OrderVO : "+vo);
			orderService.orderInsert(vo);
		}
		return "redirect:../myPage/mOrder.do?user_id="+user_id;
	}
	

}
