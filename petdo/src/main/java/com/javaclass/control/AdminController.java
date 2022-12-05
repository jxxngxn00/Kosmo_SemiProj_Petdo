package com.javaclass.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.ExchangeVO;
import com.javaclass.domain.FaqVO;
import com.javaclass.domain.MemberVO;
import com.javaclass.domain.NoticeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.domain.ReturnVO;
import com.javaclass.domain.ReviewVO;
import com.javaclass.service.BlogService;
import com.javaclass.service.CalService;
import com.javaclass.service.FaqService;
import com.javaclass.service.MemberService;
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
	
	@Autowired
	private CalService calService;
	
	@Autowired
	private MemberService memberService;
	
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
	@RequestMapping("/insertProduct.do")
	   public String insertProduct(ProductVO vo) throws IOException {
		 System.out.println(vo.getProduct_name());
	      System.out.println("상품등록");
	      productService.insertProduct(vo);
	      return "redirect:admin/itemList.do";
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
			m.addAttribute("result", productService.getProduct(vo));
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
	
	/*****************************/
	/************상품판매통계************/
	
	//상품별판매통계 페이지로 이동
	@RequestMapping("/itemCharts.do")
	public String itemCharts(Model m) {	
		List<HashMap<String,Integer>> list = calService.getItemCal();
		m.addAttribute("listCal",list);
		return "admin/itemCharts";
	}
	
	//상품별 판매통계 검색
	@ResponseBody
	@RequestMapping("/itemSelectCharts.do")
	public List<HashMap> searchItems(String cate, String keyword) {
		HashMap map = new HashMap();
		
		switch (cate) {
		case "상품명":
			cate = "product_name";
			break;
		case "상품 번호":
			cate = "product_number";
			break;
		default: cate="product_name";
		}
		
		map.put("cate", cate);
		map.put("keyword", keyword);
		
		System.out.println(map);
		List result = calService.selectItemCal(map);
		System.out.println(result);
		return result;
	}
	
	
	
	/*****************************/
	/************정산관리************/
	//정산관리 페이지로 이동
	@RequestMapping("/calCharts.do")
	public String calCharts(Model m) {	
		List<HashMap<String,Integer>> list = calService.getMonthCal();
		m.addAttribute("listCal2",list);
		return "admin/calCharts";
	}
	
	//정산관리 검색 결과 조회
	@ResponseBody
	@RequestMapping("/selectCal.do")
	//public List<HashMap<String,Integer>> selectCal(String start_date, String end_date, Model m) {
	public List selectCal(String start_date, String end_date) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("end_date", end_date);
		map.put("start_date", start_date);
		//List<HashMap<String,Integer>> list = calService.selectCal(map);
		List list = calService.selectCal(map);
		return list;
	}
	
	/*****************************/
	/************회원관리************/
	
	//회원관리 페이지로 이동
	@RequestMapping("/member.do")
	public String member(Model m) {	
		System.out.println("member/list.do 요청");
		List<MemberVO> list = memberService.memberList();
		m.addAttribute("list", list);
		return "admin/member";
	}
	
	//회원상세정보 페이지로 이동
	@RequestMapping("/memberDetail.do")
	public String memberDetail(String user_id, Model m) {
		
		//회원정보 저장
		MemberVO vo = memberService.getUserInfoAdmin(user_id);
		
		//회원 리뷰내역 저장
		List<ReviewVO> rList = memberService.getReviewAdmin(user_id);
		
		//회원 주문내역 저장
		List<OrderVO> oList = memberService.getOrderAdmin(user_id);
		
		//모델에 내용 저장
		m.addAttribute("vo",vo);
		m.addAttribute("rList",rList);
		m.addAttribute("oList",oList);
		
		return "admin/memberDetail";
	}
	
	/*****************************/
	/************FAQ************/
	
	//FAQ관리 페이지로 이동
	@RequestMapping("/faq.do")
	public String faq(FaqVO faqvo,  Model m) {
		m.addAttribute("faqList",faqService.getFaqBoardList(faqvo));
		return "admin/faq";
	}
	
	//FAQ등록 페이지로 이동
	@RequestMapping("/registFaq.do")
	public String registfaq() {
		return "admin/registFaq";
	}
	
	//FAQ 새글등록
	@RequestMapping("/insertFaq.do")
	public String insertFaq(FaqVO faqvo, Model m){
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
		//System.out.println("result : " + result.getFaq_content());
		m.addAttribute("faq", result);
		return "admin/modifyFaq";
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
		//System.out.println(list.get(1));
		m.addAttribute("orderList", list);
		return "admin/orderList";
	}
	
	//상품 배송상태 업데이트
	@RequestMapping("/updateStatus.do")
	public String updateStatus(Integer order_detail_number, Model m) {
		orderService.change(order_detail_number);
		
		List<OrderVO> list = orderService.getOrderList();
		//System.out.println(list.get(1));
		m.addAttribute("orderList", list);
		return "admin/orderList";
	}
	
	//환불사유 출력
	@ResponseBody
	@RequestMapping("/rReason.do")
	public ReturnVO refund(String num) {
		Integer order_detail_number = Integer.parseInt(num);
		ReturnVO vo = orderService.rReason(order_detail_number);
		return vo;
	}

	//교환사유 출력
	@ResponseBody
	@RequestMapping("/eReason.do")
	public ExchangeVO exchange(String num) {
		System.out.println(num);
		Integer order_detail_number = Integer.parseInt(num);
		ExchangeVO vo = orderService.eReason(order_detail_number);
		return vo;
	}

	//환불및교환 승인
	@RequestMapping("/accept.do")
	public String accept(Integer order_detail_number, Model m) {
		orderService.accept(order_detail_number);
		List<OrderVO> list = orderService.getOrderList();
		//System.out.println(list.get(1));
		m.addAttribute("orderList", list);
		return "admin/orderList";
	}
	

	//환불및교환 거절
	@RequestMapping("/reject.do")
	public String reject(Integer order_detail_number, Model m) {
		orderService.reject(order_detail_number);
		
		List<OrderVO> list = orderService.getOrderList();
		//System.out.println(list.get(1));
		m.addAttribute("orderList", list);
		return "admin/orderList";
	}
	
	
	
	
}
