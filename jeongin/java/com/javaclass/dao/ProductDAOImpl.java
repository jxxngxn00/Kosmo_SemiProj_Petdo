package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	//출력할 템플릿 객체  생성
	private SqlSessionTemplate mybatis;
	
	@Override
	//상품등록 mybatis 호출
	public void insertProduct(ProductVO vo) {
		System.out.println("===> Mybatis insertProduct() 호출");
		mybatis.insert("ProductDAO.insertProduct", vo);
	}

	//상품전체조회 mybatis 호출
	public List<ProductVO> selectAllProduct() {
		System.out.println("===> Mybatis selectAllProduct() 호출222222222222");
		return mybatis.selectList("ProductDAO.selectAllProduct");
	}


	//상품전체 조회 mybatis 호출
	  public List<ProductVO> getProductList(Criteria cri) {
		  System.out.println("====> Mybatis로 getProductList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getProductList", cri);
		   
	  }
	  
	//상품갯수 조회 mybatis 호출
	  public int getTotal(ProductVO vo) {
		  System.out.println("====> Mybatis로 getTotal() 기능 처리");
		 return mybatis.selectOne("ProductDAO.getTotal", vo);
		  
	  }
	
	  
	  public List<ProductVO> getCategoryList(ProductVO vo){
		  System.out.println("====> Mybatis로 getCategoryList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getCategoryList", vo);
	  };
	  
	  
	  public ProductVO getProduct(ProductVO vo) {
		  System.out.println("====> Mybatis로 getProduct() 기능 처리");
		  System.out.println(vo);
		  return mybatis.selectOne("ProductDAO.getProduct",vo);
	  }
	 
	

}