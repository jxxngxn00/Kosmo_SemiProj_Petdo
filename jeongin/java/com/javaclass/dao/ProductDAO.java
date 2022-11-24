package com.javaclass.dao;


import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;


public interface ProductDAO {

	
	public void insertProduct(ProductVO vo);
	
	public List<ProductVO> getProductList(Criteria cri);
	
	int getTotal(ProductVO vo);
	
	public List<ProductVO> getCategoryList(ProductVO vo);
	
	public ProductVO getProduct(ProductVO vo);

	

}