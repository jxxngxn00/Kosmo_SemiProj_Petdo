package com.javaclass.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.PagingVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;
	
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
		m.addAttribute("categoryList", list);
		return "product/getCategoryList";
	}
	
	//상품 상세조회
	@RequestMapping("/product-details.do")
	public String getProduct(ProductVO vo, Model m) {
		ProductVO result = productService.getProduct(vo);
		System.out.println(result);
		
		m.addAttribute("getProduct", result);
		return "product/product-details";
	}

	// 상품목록 페이지 부르기
	@RequestMapping("/all-product-shop.do")
	public String allProductShop() {
		return "product/all-product-shop";
	}
	
	// 상품 검색 결과 출력
	@RequestMapping("/searchItems.do")
	public String searchItems(ProductVO vo, Model model) {
		model.addAttribute("productList", productService.searchItems(cri));
		return "product/getProductList";
	}

	
}