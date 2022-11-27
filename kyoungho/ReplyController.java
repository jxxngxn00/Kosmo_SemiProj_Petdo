package com.javaclass.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javaclass.domain.ReplyVO;
import com.javaclass.service.BlogService;


@RestController
public class ReplyController {	
	
	@Autowired
	private BlogService blogService;
	
	//QnA 댓글 등록
	@PostMapping("replies/new")
	public String insertRply(ReplyVO vo) {
		System.out.println("댓글 입력 : "+vo);
		int result=blogService.insertReply(vo);
		if(result==1) return "success";
		else return "fail";
	}

	//QnA 댓글 목록 조회
	@GetMapping("replies")
	public List<ReplyVO> selectAll(Integer bno){
		List<ReplyVO> list = blogService.getReply(bno);
		return list;
	}
	
	//QnA 댓글 삭제
	@DeleteMapping("replies/{rno}")
	public void delete(@PathVariable Integer rno) {
		blogService.deleteReply(rno);
	}

	//QnA 댓글 수정
	@PostMapping("replies/{param}")
	public void update(ReplyVO vo) {
		System.out.println(vo);
		blogService.updateReply(vo);
	}

}