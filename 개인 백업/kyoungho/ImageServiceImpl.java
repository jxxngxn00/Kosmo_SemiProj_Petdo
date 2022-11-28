package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.domain.ImageVO;
import com.javaclass.dao.ImageDAOImpl;

@Service("imageService")
public class ImageServiceImpl implements ImageService {
	
	@Autowired
	private ImageDAOImpl imageDAO;
	
	
	public void insertImage(ImageVO vo) {
		imageDAO.insertImage(vo);

	}

}
