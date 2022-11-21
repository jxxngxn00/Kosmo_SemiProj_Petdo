package com.javaclass.control;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.ProductVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.service.BlogService;
import com.javaclass.service.ProductService;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private BlogService blogService;
	
	
	/*****************************/
	/************상품목록************/
	
	
	//상품목록 페이지로 이동
	@RequestMapping("/itemList.do")
	public String itemList(Model m) {	
		List<ProductVO> list = productService.selectAllProduct();
		m.addAttribute("result", list);
		return "admin/itemList";
	}
	
	//상품목록 조회 페이지로 이동
	@RequestMapping("/selectItem.do")
	public String selectItem() {	
		return "admin/itemList";
	}
	
	/*****************************/
	/************상품등록************/
	
	//상품등록 페이지로 이동
	@RequestMapping("/itemRegister.do")
	public String itemRegister() {	
		return "admin/itemRegister";
	}
	
	//상품등록하기
	@RequestMapping("/insertProduct")
	   public String insertProduct(ProductVO vo) throws IOException {
		 System.out.println(vo.getProduct_name());
	      System.out.println("상품등록");
	      productService.insertProduct(vo);
	      return "admin/itemList";
	   }
	
	/*****************************/
	/************상품판매통계************/
	
	//상품별판매통계 페이지로 이동
	@RequestMapping("/itemCharts.do")
	public String itemCharts() {	
		return "admin/itemCharts";
	}
	
	
	/*****************************/
	/************정산관리************/
	//정산관리 페이지로 이동
	@RequestMapping("/calCharts.do")
	public String calCharts() {	
		return "admin/calCharts";
	}
	
	/*****************************/
	/************회원관리************/
	
	//회원관리 페이지로 이동
	@RequestMapping("/member.do")
	public String member() {	
		return "admin/member";
	}
	
	//회원상세정보 페이지로 이동
	@RequestMapping("/memberDetail.do")
	public String memberDetail() {	
		return "admin/memberDetail";
	}
	
	/*****************************/
	/************FAQ************/
	
	//FAQ관리 페이지로 이동
	@RequestMapping("/faq.do")
	public String faq() {	
		return "admin/faq";
	}
	
	//FAQ 수정 페이지로 이동
	@RequestMapping("/modifyFaq.do")
	public String modifyFaq() {	
		return "admin/modifyFaq";
	}
	
	//FAQ등록 페이지로 이동
	@RequestMapping("/registFaq.do")
	public String registFaq() {	
		return "admin/registFaq";
	}
	
	/*****************************/
	/************QNA************/
	
	//QNA관리 페이지로 이동
	@RequestMapping("/qna.do")
	public String qna(QnaVO vo, Model m) {
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "admin/qna";
	}
	
	//QNA 답변 등록 페이지로 이동
	@RequestMapping("/registQna.do")
	public String registQna(String title,int seq, Model m) {
		m.addAttribute("aTitle","[RE] : "+title);
		m.addAttribute("qna_seq",seq);
		return "admin/registQna";
	}

	//QNA 답변 등록
	@RequestMapping("/insertQna.do")
	public String insertQna(QnaVO vo, Model m) {
		blogService.updateAnswer(vo);
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "admin/qna";
	}
	
	//QNA 글 삭제
	@RequestMapping("/deleteQna.do")
	public String deleteQna(QnaVO vo, Model m){
		blogService.deleteQna(vo);
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "admin/qna";
	}
	
	/*****************************/
	/************공지사항************/
	
	
	//공지사항관리 페이지로 이동
	@RequestMapping("/notice.do")
	public String notice() {	
		return "admin/notice";
	}
	
	
	//공지사항 수정 페이지로 이동
	@RequestMapping("/modifyNotice.do")
	public String modifyNotice() {	
		return "admin/modifyNotice";
	}
	

	//공지사항등록 페이지로 이동
	@RequestMapping("/registNotice.do")
	public String registNotice() {	
		return "admin/registNotice";
	}
	
	/*****************************/
	/************리뷰관리************/
	
	//리뷰관리 페이지로 이동
	@RequestMapping("/review.do")
	public String review() {	
		return "admin/review";
	}
	
	/*****************************/
	/************주문내역************/

	//주문내역관리 페이지로 이동
	@RequestMapping("/orderList.do")
	public String orderList() {	
		return "admin/orderList";
	}
	
	
	
}
