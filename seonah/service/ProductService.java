package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;

public interface ProductService {
	// 상품등록
	void insertProduct(ProductVO vo);
	// 상품전체 조회
	List<ProductVO> selectAllProduct();
	// 상품 카테고리별 출력
	List<ProductVO> getProductList(Criteria cri);
	// 상품 총갯수 출력
	int getTotal(ProductVO vo);
	// 상품 카테고리별 페이지 출력
	List<ProductVO> getCategoryList(ProductVO vo);
	// 상품 상세페이지 출력
	public ProductVO getProduct(ProductVO vo);
	// 상품 수정
	public void updateProduct(ProductVO vo);
	// 상품 삭제
	public void deleteProduct(ProductVO vo);
	
}