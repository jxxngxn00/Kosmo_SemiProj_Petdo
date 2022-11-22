package com.javaclass.dao;


import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;


public interface ProductDAO {

	
	public void insertProduct(ProductVO vo);
	
	public List<ProductVO> getProductList(ProductVO vo, Criteria cri);

	

}