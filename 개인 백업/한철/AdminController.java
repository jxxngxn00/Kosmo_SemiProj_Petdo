package com.javaclass.control;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import com.javaclass.domain.MemberVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.service.MemberService;
import com.javaclass.service.MemberServiceImpl;
import com.javaclass.service.ProductService;


@Controller
@RequestMapping("/admin")
public class AdminController{
	
	
	private final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	// MemberService 객체를 스프링에서 생성하여 주입시킴
	@Autowired
	MemberService memberService;
	
	@Autowired
	   private ProductService productService;
	

	// 01회원 목록
	// url pattern mapping
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		// cintroller => service => dao 요청
		System.out.println("member/list.do 요청");
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "/admin/member";
		
		
	}

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
	
	//상품별판매통계 페이지로 이동
	@RequestMapping("/itemCharts.do")
	public String itemCharts() {	
		return "admin/itemCharts";
	}
	
	//정산관리 페이지로 이동
	@RequestMapping("/calCharts.do")
	public String calCharts() {	
		return "admin/calCharts";
	}
	
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
	
	
	//FAQ관리 페이지로 이동
	@RequestMapping("/faq.do")
	public String faq() {	
		return "admin/faq";
	}
	
	//리뷰관리 페이지로 이동
	@RequestMapping("/review.do")
	public String review() {	
		return "admin/review";
	}
	
	//QNA관리 페이지로 이동
	@RequestMapping("/qna.do")
	public String qna() {	
		return "admin/qna";
	}
	
	//공지사항관리 페이지로 이동
	@RequestMapping("/notice.do")
	public String notice() {	
		return "admin/notice";
	}
	
	//FAQ 수정 페이지로 이동
	@RequestMapping("/modifyFaq.do")
	public String modifyFaq() {	
		return "admin/modifyFaq";
	}
	
	//공지사항 수정 페이지로 이동
	@RequestMapping("/modifyNotice.do")
	public String modifyNotice() {	
		return "admin/modifyNotice";
	}

	//FAQ등록 페이지로 이동
	@RequestMapping("/registFaq.do")
	public String registFaq() {	
		return "admin/registFaq";
	}
	
	//QNA 답변 등록 페이지로 이동
	@RequestMapping("/registQna.do")
	public String registQna() {	
		return "admin/registQna";
	}
	
	//공지사항등록 페이지로 이동
	@RequestMapping("/registNotice.do")
	public String registNotice() {	
		return "admin/registNotice";
	}
	
	//주문내역관리 페이지로 이동
	@RequestMapping("/orderList.do")
	public String orderList() {	
		return "admin/orderList";
	}
	
	
	
}
