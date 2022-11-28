package com.javaclass.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.dao.ProductDAO;
import com.javaclass.domain.ProductVO;
import com.javaclass.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	
   @RequestMapping("/getProductList.do")
   public void list(ProductVO vo, Model m) {
	   m.addAttribute("productList",productService.getProductList(vo));
   }
	
	
   //상품목록 페이지 부르기
   @RequestMapping("/all-product-shop.do")
   public String allProductShop(){
      return"product/all-product-shop";
   }
   
   //상품상세 페이지 부르기
   @RequestMapping("/product-details.do")
   public String productDetail(){
      return"product/product-details";
   }
   
   //케어용품(전체) 페이지 부르기
   @RequestMapping("/care1-shop.do")
   public String care1Shop(){
      return"product/care1-shop";
   }
   //케어용품(목욕) 페이지 부르기
   @RequestMapping("/care2-shop.do")
   public String care2Shop(){
      return"product/care2-shop";
   }
   //케어용품(미용) 페이지 부르기
   @RequestMapping("/care-shop.do")
   public String careShop(){
      return"product/care-shop";
   }
   //의류(전체) 페이지 부르기
   @RequestMapping("/closet-shop.do")
   public String closetShop(){
      return"product/closet-shop";
   }
   //의류(프리미엄) 페이지 부르기
   @RequestMapping("/closet1-shop.do")
   public String closet1Shop(){
      return"product/closet1-shop";
   }
   //의류(아우터) 페이지 부르기
   @RequestMapping("/closet2-shop.do")
   public String closet2Shop(){
      return"product/closet2-shop";
   }
   //의류(상의) 페이지 부르기
   @RequestMapping("/closet3-shop.do")
   public String closet3Shop(){
      return"product/closet3-shop";
   }
   //의류(악세서리) 페이지 부르기
   @RequestMapping("/closet4-shop.do")
   public String closet4Shop(){
      return"product/closet4-shop";
   }
   //식품(전체) 페이지 부르기
   @RequestMapping("/food-shop.do")
   public String foodShop(){
      return"product/food-shop";
   }
   //식품(간식) 페이지 부르기
   @RequestMapping("/food1-shop.do")
   public String food1Shop(){
      return"product/food1-shop";
   }
   //의류(사료) 페이지 부르기
   @RequestMapping("/food2-shop.do")
   public String food2Shop(){
      return"product/food2-shop";
   }
   //의류(영양제) 페이지 부르기
   @RequestMapping("/food3-shop.do")
   public String food3Shop(){
      return"product/food3-shop";
   }
   //리빙용품 페이지 부르기
   @RequestMapping("/living-shop.do")
   public String livingShop(){
      return"product/living-shop";
   }
   //위생/배변용품(전체) 페이지 부르기
   @RequestMapping("toilet-shop.do")
   public String toiletShop(){
      return"product/toilet-shop";
   }
   //위생/배변용품(위생) 페이지 부르기
   @RequestMapping("toilet1-shop.do")
   public String toilet1Shop(){
      return"product/toilet1-shop";
   }
   //위생/배변용품(배변) 페이지 부르기
   @RequestMapping("toilet2-shop.do")
   public String toilet2Shop(){
      return"product/toilet2-shop";
   }
   //장난감 페이지 부르기
   @RequestMapping("toy-shop.do")
   public String toyShop(){
      return"product/toy-shop";
   }
   
   
}