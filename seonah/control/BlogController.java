package com.javaclass.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.FaqVO;
import com.javaclass.domain.QnaVO;
import com.javaclass.service.BlogService;
import com.javaclass.service.FaqService;


@Controller
@RequestMapping("/blog")
public class BlogController {	
	
	@Autowired
	private BlogService blogService;
	
	@Autowired
    private FaqService faqService;
	
	//매번 Mapping 할 필요 없이 연결
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("경로 : "+step);
		return step;
	}

	/****** QnA ******/
	
	//QnA 페이지로 이동
	@RequestMapping("/qna.do")
	public String qna(QnaVO vo, Model m) {	
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "blog/QnA";
	}
	
	//QnA 상세보기 페이지로 이동
	@RequestMapping(value="/qnaDetail.do", method=RequestMethod.GET)
	public String qnaDetail(QnaVO vo, Model m) {
		QnaVO result = blogService.getQna(vo);
		System.out.println("result : "+result.getQna_content());
		m.addAttribute("qna", result);
		return "blog/QnaDetail";
	}
	
	//QnA 수정하기 페이지로 이동
	@RequestMapping("/qnaUpdate.do")
	public String qnaUpdate(QnaVO vo, Model m) {	
		QnaVO result = blogService.getQna(vo);
		System.out.println("result : "+result.getQna_content());
		m.addAttribute("qna", result);
		return "blog/QnaModify";
	}
	
	//QnA 새글등록 페이지로 이동
	@RequestMapping("/qnaRegist.do")
	public String qnaRegist() {		
		return "blog/QnaRegist";
	}
	
	//QnA DB에 새글 등록
	@RequestMapping("/insertQna.do")
	public String insertQna(QnaVO vo, Model m){
		System.out.println("글등록");
		blogService.insertQna(vo);
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "blog/QnA";
	}
	
	//QnA DB 글 삭제
	@RequestMapping("/deleteQna.do")
	public String deleteQna(QnaVO vo, Model m){
		System.out.println("글삭제");
		blogService.deleteQna(vo);
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "blog/QnA";
	}
	
	//QnA DB 글 수정
	@RequestMapping("/updateQna.do")
	public String updateQna(QnaVO vo, Model m){
		System.out.println("글수정");
		blogService.updateQna(vo);
		m.addAttribute("qnaList", blogService.getQnaList(vo));
		return "blog/QnA";
	}

	/****** 공지사항 ******/
	
	//공지사항 페이지로 이동
	@RequestMapping("/notice.do")
	public String notice() {		
		return "blog/Notice";
	}
	
	//공지사항 상세보기 페이지로 이동
	@RequestMapping("/noticeDetail.do")
	public String noticeDetail() {		
		return "blog/NoticeDetail";
	}


	/****** FAQ ******/
	
	// 페이지 이동
	@RequestMapping("/faq.do")
	public String faq(FaqVO faqvo, Model m) {	
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "blog/Faq";
	}
	
	// 등록한 FAQ 유저페이지 FAQ 상세보기 페이지 이동
	@RequestMapping(value="/faqDetail.do", method=RequestMethod.GET)
	public String qnaDetail(FaqVO faqvo, Model m) {
		FaqVO result = faqService.selectFaqBoard(faqvo);
		System.out.println("result : "+result.getFaq_content());
		m.addAttribute("faq", result);
		return "blog/FaqDetail";
	}
	

	// 글 수정
	@RequestMapping("/updateFaq.do")
	public String updateFaqBoard(FaqVO faqvo, Model m) {	
		 System.out.println("글수정");
		 faqService.updateFaqBoard(faqvo);
		 m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		 return "blog/FaqDetail";
	}
	
	// FAQ 리스트 나열
	
	
	

	
	
	
}
