package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


	//상품카테고리별 조회 mybatis 호출
	  public List<ProductVO> getProductList(ProductVO vo, Criteria cri) {
		  //hashmap 새 변수생성
		  Map<String, Object> paramMap = new HashMap<String, Object>();
		  //해당 변수에 각각의 값을 넣어주기
		  paramMap.put("productList", vo);
		  // 시작 숫자설정??
		  cri.setStartNum((cri.getPageNum() - 1) * cri.getAmount());
		  paramMap.put("criteria", cri);
		  System.out.println("====> Mybatis로 getProductList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getProductList", paramMap);
		  
	  }
	
	 
	

}