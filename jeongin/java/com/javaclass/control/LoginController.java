package com.javaclass.control;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;

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
	
	@RequestMapping("{url}.do")
	public String userPage(@PathVariable String url) {
		System.out.println("확인");
		return "/views/" + url;
		//"/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}
	
	
	//로그인 페이지로 이동
	@RequestMapping("loginOpen.do")
	public String loginOpen() {
		return "login";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping("joinOpen.do")
	public String joinOpen() {
		return "join";
	}
	
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
	//세션 사용 -> 인자에 httpSession 변수 선언
	public String login(MemberVO vo, HttpSession session) {
		System.out.println("로그인--");
		MemberVO result = memberService.idCheck_Login(vo);
		if(result==null || result.getUser_id()==null) {
			System.out.println("로그인 실패");
			return "login";
			
		}else {
			System.out.println("로그인 성공 : "+result.getUser_id());
			//세션에 저장
			session.setAttribute("login", result.getUser_id());
			session.setAttribute("pwd", result.getUser_pwd());
			
			if(result.getUser_id().equals("admin")) {
				System.out.println("admin 접속");
				return "adminMain";
				}
		}
		return "main";
	}
	
	
	//로그아웃
	@RequestMapping("logOut.do")
	public String logOut(HttpSession session){
		//HttpSession ses = request.getSession(true);
		String id = (String) session.getAttribute("id");
		String pwd = (String) session.getAttribute("pwd");
		session.removeAttribute(id);
		session.removeAttribute(pwd);
		session.invalidate();
		
		return "login";
	}
	
	
	//아이디 중복체크
	@RequestMapping(value="idCheck.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String checkId(MemberVO vo) {
		
		System.out.println("idCheck.do 요청 :" + vo.getUser_id());
		
		MemberVO result =  memberService.idCheck_Login(vo);
		String message = "사용가능한 아이디입니다.";
		if(result != null) message = "중복된 아이디가 있습니다.";
		
		return message;
	}

	
	 // 유저 로그인/로그아웃 기록 저장하는 텍스트 파일 추가	
	public void logCustomer(String strToWrite, HttpSession session) {
	      try {
	         File myObj = new File("fileLog.txt");
	         FileWriter myWriter = null;
	         if (myObj.createNewFile()) {
	            myWriter = new FileWriter("C:\\springweb\\petdo\\src\\main\\resources\\fileLog.txt");
	            LocalDateTime now = LocalDateTime.now();	// 현재 날짜와 시간 불러오는 객체
	            myWriter.write("PetdoCustomer " + session.getAttribute("login") + strToWrite + String.valueOf(now));
	            myWriter.write('\n');
	         } else {
	            // file already exists
	            myWriter = new FileWriter("C:\\springweb\\petdo\\src\\main\\resources\\fileLog.txt", true);
	            LocalDateTime now = LocalDateTime.now();
	            myWriter.write("PetdoCustomer " + session.getAttribute("login") + strToWrite + String.valueOf(now));
	            myWriter.write('\n');
	         }
	         myWriter.close();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }//logCustomer
	

}
