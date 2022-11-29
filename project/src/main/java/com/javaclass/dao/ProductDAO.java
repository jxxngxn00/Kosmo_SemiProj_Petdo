package com.javaclass.dao;


import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;


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
	public List<ProductVO> searchItems(String keyword);


	//관리자--상품상태비율
	public List<HashMap> getRatio();
	//관리자--상품재고 비율
	public List<HashMap> getItemRatio();

	// 리뷰 작성
	public void insertReview(ReviewVO vo);
	// 리뷰 조회
	public List<ReviewVO> getReview(Integer product_number);
	// 조회수 증가
	public void hitsplus(Integer product_number);
	// 베스트 상품 출력
	public List<ProductVO> topProduct(ProductVO vo);
	// 신상품 출력
	public List<ProductVO> newProduct(ProductVO vo);
	// 배송 완료 시 재고 하나씩 줄어듬
	public void ordercount(ProductVO vo);
}