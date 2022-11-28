package com.javaclass.dao;


import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;


public interface ProductDAO {

	
	//상품 등록
	public void insertProduct(ProductVO vo);
	//상품 전체 리스트 출력
	public List<ProductVO> getProductList(Criteria cri);
	//상품 총 갯수 출력
	int getTotal(ProductVO vo);
	//상품 카테고리 별로 출력
	public List<ProductVO> getCategoryList(ProductVO vo);
	//상품 상세 페이지 출력
	public ProductVO getProduct(ProductVO vo);
	//상품 수정
	public void updateProduct(ProductVO vo);	
	// 상품 삭제
	public void deleteProduct(ProductVO vo);
	//상품 검색
	public List<ProductVO> searchItems(Criteria cri);

}