package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ImageVO;

@Repository("ImageDAO")
public class ImageDAOImpl implements ImageDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	
	public void insertImage(ImageVO vo) {
		System.out.println("===> Mybatis insertImage() 호출");
		mybatis.insert("ImageDAO.insertImage", vo);
	}

}
