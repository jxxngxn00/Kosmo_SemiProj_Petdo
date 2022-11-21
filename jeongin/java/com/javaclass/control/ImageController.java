package com.javaclass.control;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.ImageVO;
import com.javaclass.service.ImageService;


@Controller
public class ImageController {
	
	@Autowired
	private ImageService imageService;
	
	// 이미지 등록(어디에다 넣을지만 고르면 됩니다...)
			@RequestMapping(value = "/????.do")
			public void insertImage(ImageVO vo) throws IOException {
				System.out.println("/?????.do 호출");
				imageService.insertImage(vo);
			}
	

}
