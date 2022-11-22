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
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertProduct(ProductVO vo) {
		System.out.println("===> Mybatis insertProduct() 호출");
		mybatis.insert("ProductDAO.insertProduct", vo);
	}


	public List<ProductVO> selectAllProduct() {
		System.out.println("===> Mybatis selectAllProduct() 호출222222222222");
		return mybatis.selectList("ProductDAO.selectAllProduct");
	}



	  public List<ProductVO> getProductList(ProductVO vo, Criteria cri) {
		  Map<String, Object> paramMap = new HashMap<String, Object>();
		  paramMap.put("productList", vo);
		  cri.setStartNum((cri.getPageNum() - 1) * cri.getAmount());
		  paramMap.put("criteria", cri);
		  System.out.println("====> Mybatis로 getProductList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getProductList", paramMap);
		  
	  }
	









	 
	

}
