package com.javaclass.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.OrderDetailVO;
import com.javaclass.domain.PagingVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;
import com.javaclass.service.MemberService;
import com.javaclass.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;
	
	@Autowired
	MemberService memberService;
	
	//상품 목록조회(페이징 처리)
	@RequestMapping(value="/getProductList.do")
	//@RequestParam : Command 객체인 VO에 매핑값이 없는 사용자 입력정보는 직접 받아서 처리
	//				  value = 화면으로부터 전달된 파라미터 이름(jsp의 input의 name속성 값)
	//				  required = 생략 가능 여부
	public String getProductList(ProductVO vo, Model model, Criteria cri) {
		System.out.println("글 목록 검색 처리");
		PagingVO pageVO = new PagingVO(cri, productService.getTotal(vo));
		System.out.println(productService.getTotal(vo));
		System.out.println(cri);
		System.out.println(pageVO);
		model.addAttribute("pagingVO", pageVO);
		model.addAttribute("productList", productService.getProductList(cri));
		return "product/getProductList";
	}
	
	//상품 카테고리 별로 출력
		@RequestMapping(value="/getCategoryList.do")
		public String getCategoryList(ProductVO vo, Model m) {
			List<ProductVO> list =productService.getCategoryList(vo);
			System.out.println(list.get(0));
			//categoryList에 변수 list 값 넣기
			m.addAttribute("categoryList", list);
			// 품절처리
			/*
			 * List<ProductVO> soldOutList = productService.soldoutProduct(vo);
			 * m.addAttribute("soldOutList", soldOutList);
			 */
			return "product/getCategoryList";
		}
		
		//상품 상세 페이지 
		@RequestMapping("/product-details.do")
		public String getProduct(ProductVO vo,ReviewVO vo2, Model m , @ModelAttribute("projectVO") ProductVO vo1, Model model) {
			ProductVO result = productService.getProduct(vo);
			System.out.println(result);
			m.addAttribute("getProduct", result);
			Integer product_number = vo.getProduct_number();
			// 리뷰 조회
			List<ReviewVO> list = productService.getReview(product_number);
			m.addAttribute("orderReview", list);
			// 조회수 증가
			productService.hitsplus(vo1.getProduct_number());	// 조회수 증가
			System.out.println(vo1);
			ProductVO count = productService.getProduct(vo1);
			model.addAttribute("count", count);
			
			return "product/product-details";
		}
		
		// ****** 리뷰 *******
		// 리뷰 작성
		@RequestMapping("/reviewRegister.do")
		public String reviewRegister(ReviewVO vo, Model m) {
			System.out.println(vo);
			productService.insertReview(vo);
			return "redirect:product-details.do";
		}
		
		// 상품목록 페이지 부르기
		@RequestMapping("/care.do")
		public String allProductShop() {
			return "product/getCategoryList";
		}
		
		// 베스트 상품 출력
		@RequestMapping("/main.do")
		public String bestProduct(ProductVO vo , Model m) {
			List<ProductVO> product = productService.topProduct(vo);
			System.out.println(product.size());
			m.addAttribute("productList" , product);
			return "main";
		}
		
		
		
		
		
		


	
}