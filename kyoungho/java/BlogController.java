package com.javaclass.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/blog")
public class BlogController {	
	//QnA 페이지로 이동
	@RequestMapping("/qna.do")
	public String qna() {		
		return "blog/QnA";
	}
	
	//공지사항 페이지로 이동
	@RequestMapping("/notice.do")
	public String notice() {		
		return "blog/Notice";
	}
	
	//FAQ 페이지로 이동
	@RequestMapping("/faq.do")
	public String faq() {		
		return "blog/Faq";
	}

	//QnA 상세보기 페이지로 이동
	@RequestMapping("/qnaDetail.do")
	public String qnaDetail() {		
		return "blog/QnaDetail";
	}
	


	//공지사항 상세보기 페이지로 이동
	@RequestMapping("/noticeDetail.do")
	public String noticeDetail() {		
		return "blog/NoticeDetail";
	}
	

	

	//QnA 페이지로 이동
	@RequestMapping("/faqDetail.do")
	public String faqDetail() {		
		return "blog/FaqDetail";
	}
	
	
	
	
	
	
	
	
	
}
