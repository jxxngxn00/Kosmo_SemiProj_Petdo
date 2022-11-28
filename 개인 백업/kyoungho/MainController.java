package com.javaclass.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	//사용자 메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main() {		
		System.out.println("controller");
		return "main";
	}
	

	//관리자 메인 페이지로 이동
	@RequestMapping("/admin.do")
	public String admin() {	
		return "adminMain";
	}
	
	
	
}
