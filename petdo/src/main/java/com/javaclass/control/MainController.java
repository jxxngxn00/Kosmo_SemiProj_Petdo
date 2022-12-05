package com.javaclass.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.ProductVO;
import com.javaclass.service.ProductService;


@Controller
public class MainController {
	
	@Autowired
	private ProductService productService;
	
	//사용자 메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main(ProductVO vo , Model m , ProductVO vo1 , Model m1) {		
//		System.out.println("controller");
		
		// 베스트 상품 출력
		List<ProductVO> product = productService.topProduct(vo);
		System.out.println(product.size());
		m.addAttribute("productList" , product);
		// 신상품 출력
		List<ProductVO> newproduct = productService.newProduct(vo1);
		System.out.println(newproduct.size());
		m1.addAttribute("newproductList" , newproduct);


		return "/main";
	}
	

	//관리자 메인 페이지로 이동
	@RequestMapping("/admin.do")
	public String admin(Model m) {	
		m.addAttribute("ratio",productService.getRatio());
		m.addAttribute("ItemRatio",productService.getItemRatio());
		return "adminMain";
	}
	
	
	
}
