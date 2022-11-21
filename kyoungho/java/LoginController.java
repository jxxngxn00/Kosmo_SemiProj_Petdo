package com.javaclass.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.javaclass.domain.MemberVO;
import com.javaclass.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("loginOpen.do")
	public String test1() {
		
		return "login";
	}

	@RequestMapping("joinOpen.do")
	public String test2() {
		return "join";
	}
	
	@RequestMapping("{url}.do")
	public String userPage(@PathVariable String url) {
		System.out.println("확인");
		return "/views/" + url;
		//"/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}
	
	/*
	 * 요청 : /user/userInsert.do
	 * 뷰페이지 :  user/userJoin_ok.jsp
	 */
	//회원가입
	@RequestMapping(value="userInsert.do", produces="application/text;charset=utf-8")
	public String userInsert(MemberVO vo) {
		System.out.println(vo.getUser_name());
		
		int result = memberService.userInsert(vo);
		if(result==1) {
			System.out.println(vo.getUser_name() + "님 가입을 축하합니다.");
		}else {
			System.out.println("가입되지 않았습니다.");
		}
		
		return "login";
	}
	
	
	//로그인
	@RequestMapping("login.do")
	//************
	//세션 사용 -> 인자에 httpSession 변수 선언
	public String login(MemberVO vo, HttpSession session) {
		System.out.println("로그인--");
		MemberVO result = memberService.idCheck_Login(vo);
		if(result==null || result.getUser_id()==null) {
			System.out.println("로그인 실패");
			return "login";
		}else {
			System.out.println("로그인 성공");
			//세션에 저장
			session.setAttribute("login", vo.getUser_id());
			
			if(vo.getUser_id().equals("admin")) {
				System.out.println("admin 접속");
				return "adminMain";
			}
			else { return "main";}
		}
	}
	
	
	//로그아웃
	@RequestMapping("logOut.do")
	public String logOut(HttpSession session){
		String id = (String) session.getAttribute("id");
		session.removeAttribute(id);
		session.invalidate();
		
		return "login";
	}
	
	
	//이건 아이디 중복체크
	@RequestMapping(value="idCheck.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String checkId(MemberVO vo) {
		
		System.out.println("idCheck.do 요청 :" + vo.getUser_id());
		
		MemberVO result =  memberService.idCheck_Login(vo);
		String message = "사용가능한 아이디입니다.";
		if(result != null) message = "중복된 아이디가 있습니다.";
		
		return message;
	}

	

}
