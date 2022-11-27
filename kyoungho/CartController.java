package com.javaclass.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.CartVO;
import com.javaclass.service.CartService;
import com.javaclass.service.OrderService;

@Controller
@RequestMapping(value = "/cart")
public class CartController {

	@Autowired
	private CartService cartService;

	// 장바구니 추가
	@RequestMapping("/insert.do")
	public String cartInsert(CartVO vo, HttpSession session) {
		System.out.println(vo);
		String user_id = (String) session.getAttribute("login");
		System.out.println(user_id);
		vo.setUser_id(user_id);
		// 장바구니에 기존 상품이 있는지 검사
		System.out.println(vo.getProduct_number());
		int count = cartService.countCart(vo.getProduct_number(), user_id);
		// (count == 0) ? cartService.updateCart(vo) : cartService.cartInsert(vo);
		if (count == 0) {
			// 없으면 insert
			cartService.cartInsert(vo);
		} else {
			// 있으면 update
			cartService.updateCart(vo);
		}
		return "redirect:/cart/cartList.do";
	}

//	//장바구니 목록
//	@RequestMapping("/cartList.do")
//	public ModelAndView listCart(HttpSession session, ModelAndView mav) {
//		
//		System.out.println("왜안나오지");
//		//세션에 저장된 user_id
//		String user_id = (String)session.getAttribute("user_id");
//		//Map<String, Object> map =  new HashMap<String, Object>();
//		//장바구니 정보
//		List<CartVO> list = cartService.listCart(user_id);
//		//장바구니 전체 금액 호출
//		int sumCartMoney = cartService.sumCartMoney(user_id);
//		//장바구니 정보를 map에 저장
//		mav.addObject("list", list);
//		//장바구니 상품의 유뮤
//		mav.addObject("count", list.size());
//		//장바구니 전체 금액
//		mav.addObject("totalMoney", sumCartMoney);
//		//주문 상품 전체 금액
//		mav.addObject("allSum", sumCartMoney);
//		//view의 이름 저장
//		mav.setViewName("/cartList.do");
//		//map 변수 저장
//		//mav.addObject("map", map);
//		return mav;
//	}

	// 장바구니 목록
	@RequestMapping("/cartList.do")
	public void cartList(CartVO vo, HttpSession session, Model m) {
		System.out.println(vo);
		// 세션에 저장된 user_id
		String user_id = (String) session.getAttribute("login");
		vo.setUser_id(user_id);
		// 장바구니 정보
		List<CartVO> list = cartService.listCart(user_id);
		// 장바구니 전체 금액 호출
		int sumCartMoney = cartService.sumCartMoney(user_id);
		m.addAttribute("totalMoney", sumCartMoney);
		m.addAttribute("cartList", list);

	}

	// 장바구니 삭제
	@RequestMapping("/deleteCart.do")
	public String deleteCart(int cart_number) {
		cartService.deleteCart(cart_number);
		return "redirect:/cart/cartList.do";

	}

	
	
	  // 장바구니 수정
	  
	  @RequestMapping("/modifyCart.do") 
	  public String modifyCart(@ModelAttribute("cartVO") CartVO vo, HttpSession session) {
	  String user_id = (String) session.getAttribute("login"); 
	  System.out.println(vo.getCart_number()); 
	  vo.setUser_id(user_id); 
	  cartService.modifyCart(vo);
	  System.out.println(vo);
	  return "redirect:/cart/cartList.do?cart_number=" + vo.getCart_number(); }
	
	  
	 
}
