package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ProductVO;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	@Override
	public void insertProduct(ProductVO vo) {
		System.out.println("===> Mybatis insertProduct() 호출");
		mybatis.insert("ProductDAO.insertProduct", vo);
	}


	public List<ProductVO> selectAllProduct() {
		System.out.println("===> Mybatis selectAllProduct() 호출");
		return mybatis.selectList("ProductDAO.selectAllProduct");
	}


	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> Mybatis getProductList() 호출");
		return mybatis.selectList("ProductDAO.getProductList", vo);
	}
	

}
