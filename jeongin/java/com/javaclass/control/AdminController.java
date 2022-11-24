package com.javaclass.control;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.FaqVO;
import com.javaclass.domain.NoticeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.service.BlogService;
import com.javaclass.service.FaqService;
import com.javaclass.service.OrderService;
import com.javaclass.service.ProductService;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private FaqService faqService;
	
	@Autowired
	private OrderService orderService;
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
	
	//FAQ 새글등록 (어드민 페이지)
	@RequestMapping("/insertFaq.do")
	public String insertFaq(FaqVO faqvo, Model m){
		System.out.println("글등록");
		faqService.insertFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}
	
	// 글 수정
	@RequestMapping("/updateFaq.do")
	public String updateFaqBoard(FaqVO faqvo, Model m) {	
		 System.out.println("글수정");
		 faqService.updateFaqBoard(faqvo);
		 m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		 return "admin/faq";
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
	public String notice(Model m) {	
		m.addAttribute("nList", blogService.getNoticeList());
		return "admin/notice";
	}
	
	//공지사항등록 페이지로 이동
	@RequestMapping("/registNotice.do")
	public String registNotice() {	
		return "admin/registNotice";
	}
	
	//공지사항 수정 페이지로 이동
	@RequestMapping("/modifyNotice.do")
	public String modifyNotice(NoticeVO vo, Model m) {	
		m.addAttribute("notice",blogService.getNotice(vo));
		return "admin/modifyNotice";
	}

	//공지사항 수정
	@RequestMapping("/updateNotice.do")
	public String updateNotice(NoticeVO vo,Model m) {	
		blogService.updateNotice(vo);
		m.addAttribute("nList", blogService.getNoticeList());
		return "admin/notice";
	}

	//공지사항 삭제 
	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(NoticeVO vo, Model m) {
		blogService.deleteNotice(vo);
		m.addAttribute("nList", blogService.getNoticeList());
		return "admin/notice";
	}

	//공지사항 등록 
	@RequestMapping("/insertNotice.do")
	public String insertNotice(NoticeVO vo, Model m) {	
		blogService.insertNotice(vo);
		m.addAttribute("nList", blogService.getNoticeList());
		return "admin/notice";
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
	public String orderList(Model m) {	
		List<OrderVO> list = orderService.getOrderList();
		m.addAttribute("orderList", list);
		return "admin/orderList";
	}
	
	
	
}
