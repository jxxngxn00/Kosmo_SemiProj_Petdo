package com.javaclass.control;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.FaqVO;
import com.javaclass.domain.OrderDetailVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.service.FaqService;
import com.javaclass.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductService productService;

	@Autowired
	private FaqService faqService;
	
	
	// 상품목록 페이지로 이동
	@RequestMapping("/itemList.do")
	   public String itemList(Model m) {   
	      List<ProductVO> list = productService.selectAllProduct();
	      m.addAttribute("result", list);
	      return "admin/itemList";
	   }

	// 상품목록 조회 페이지로 이동
	@RequestMapping("/selectItem.do")
	public String selectItem() {
		return "admin/itemList";
	}

	// 상품등록 페이지로 이동
	@RequestMapping("/itemRegister.do")
	public String itemRegister() {
		return "admin/itemRegister";
	}

	// 상품등록하기
	@RequestMapping("/insertProduct")
	public String insertProduct(ProductVO vo) throws IOException {
		System.out.println(vo.getProduct_name());
		System.out.println("상품등록");
		productService.insertProduct(vo);
		return "admin/itemList";
	}

	// 상품별판매통계 페이지로 이동
	@RequestMapping("/itemCharts.do")
	public String itemCharts() {
		return "admin/itemCharts";
	}

	// 정산관리 페이지로 이동
	@RequestMapping("/calCharts.do")
	public String calCharts() {
		return "admin/calCharts";
	}

	// 회원관리 페이지로 이동
	@RequestMapping("/member.do")
	public String member() {
		return "admin/member";
	}

	// 회원상세정보 페이지로 이동
	@RequestMapping("/memberDetail.do")
	public String memberDetail() {
		return "admin/memberDetail";
	}

	// 리뷰관리 페이지로 이동
	@RequestMapping("/review.do")
	public String review() {
		return "admin/review";
	}

	// QNA관리 페이지로 이동
	@RequestMapping("/qna.do")
	public String qna() {
		return "admin/qna";
	}

	// 공지사항관리 페이지로 이동
	@RequestMapping("/notice.do")
	public String notice() {
		return "admin/notice";
	}

	// 공지사항 수정 페이지로 이동
	@RequestMapping("/modifyNotice.do")
	public String modifyNotice() {
		return "admin/modifyNotice";
	}

	// FAQ등록 페이지로 이동
	@RequestMapping("/registFaq.do")
	public String registFaq() {
		return "admin/registFaq";
	}

	// QNA 답변 등록 페이지로 이동
	@RequestMapping("/registQna.do")
	public String registQna() {
		return "admin/registQna";
	}

	// 공지사항등록 페이지로 이동
	@RequestMapping("/registNotice.do")
	public String registNotice() {
		return "admin/registNotice";
	}

	// 주문내역관리 페이지로 이동
	@RequestMapping("/orderList.do")
	public String orderList() {
		return "admin/orderList";
	}

	/****** FAQ ******/

	// 페이지 이동시 등록되어 있는 리스트 나열
	@RequestMapping("/faq.do")
	public String faq(FaqVO faqvo,  Model m) {
		m.addAttribute("faqList",faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}
	
	// FAQ 새글등록 (어드민 페이지)
	@RequestMapping("/insertFaq.do")
	public String insertFaq(FaqVO faqvo, Model m) {
		System.out.println("글등록");
		faqService.insertFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}

	// 글 삭제
	@RequestMapping("/deleteFaq.do")
	public String deleteFaq(FaqVO faqvo, Model m) {
		System.out.println("글삭제");
		faqService.deleteFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}

	// 게시글의 정보 수정 페이지에 가져오기
	@RequestMapping("/modifyFaq.do")
	public String faqUpdatelist(FaqVO faqvo, Model m) {
		FaqVO result = faqService.selectFaqBoard(faqvo);
		m.addAttribute("faq", result);
		return "admin/modifyFaq";
	}

	// 글 수정
	@RequestMapping("/updateFaq.do")
	public String faqUpdate(FaqVO faqvo, Model m) {
		System.out.println("글수정" + faqvo);
		faqService.updateFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}
	
	/****** 상품 수정 ******/
	// 상품 정보 수정 페이지에 가져오기
		@RequestMapping("/itemModify.do")
		public String itemUpdatelist(ProductVO vo, Model m) {
			ProductVO result = productService.getProduct(vo);
			System.out.println("result : " + result.getProduct_name());
			m.addAttribute("item", result);
			return "admin/itemModify";
		}
		
		@RequestMapping("/updateProduct.do")
		public String itemUpdate(ProductVO vo, Model m) {
			System.out.println("글수정" + vo);
			productService.updateProduct(vo);
			m.addAttribute("itemList", productService.getProduct(vo));
			return "admin/itemList";
		}
		
	// 상품 삭제
		@RequestMapping("/deleteProduct.do")
		public String deleteProduct(ProductVO vo, Model m) {
			System.out.println("상품 삭제");
			productService.deleteProduct(vo);
			m.addAttribute("item", productService.getProduct(vo));
			return "admin/itemList";
		}
		
		

}
