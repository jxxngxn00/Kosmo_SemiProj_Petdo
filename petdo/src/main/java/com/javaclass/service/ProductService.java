package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;

public interface ProductService {
	
	/*** 메인 페이지 ***/
	// 베스트 상품 출력
	public List<ProductVO> topProduct(ProductVO vo);
	// 신상품 출력
	public List<ProductVO> newProduct(ProductVO vo);

	/*** 상품 목록 ***/
	//상품 카테고리별 출력
	List<ProductVO> getProductList(Criteria cri);
	// 상품 총갯수 출력
	int getTotal(ProductVO vo);
	// 상품 카테고리별 페이지 출력
	List<ProductVO> getCategoryList(ProductVO vo);
	
	/*** 상품 상세 ***/
	// 상품 상세페이지 출력
	public ProductVO getProduct(ProductVO vo);
	// 리뷰 작성
	public void insertReview(ReviewVO vo);
	// 리뷰 조회
	List<ReviewVO> getReview(Integer product_number);
	// 조회수
	public void hitsplus(Integer product_number);
	
	/*** 상품 결과 ***/
	//상품 검색
	List<ProductVO> searchItems(String keyword);
	
	
	/*** 관리자 페이지 ***/
	//상품등록
	void insertProduct(ProductVO vo);
	// 상품 수정
	public void updateProduct(ProductVO vo);
	// 상품 삭제
	public void deleteProduct(ProductVO vo);
	//상품전체 조회
	List<ProductVO> selectAllProduct();
	//관리자--상품상태비율
	List<HashMap> getRatio();
	//관리자--상품재고 비율
	List<HashMap> getItemRatio();
	
	/*** 판매완료시 재고수량 조절 ***/
	// 재고 수량 조절
	public void ordercount(ProductVO vo) ;
}