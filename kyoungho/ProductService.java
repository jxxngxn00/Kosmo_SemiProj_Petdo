package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;

public interface ProductService {
	//상품등록
	void insertProduct(ProductVO vo);
	//상품전체 조회
	List<ProductVO> selectAllProduct();
	//상품 카테고리별 출력
	List<ProductVO> getProductList(ProductVO vo, Criteria cri);
	
	
	

}