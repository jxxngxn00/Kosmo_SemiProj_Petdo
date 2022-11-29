package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.ProductDAOImpl;
import com.javaclass.domain.Criteria;
import com.javaclass.domain.OrderDetailVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;


@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAOImpl productDAO;

	//상품등록
	public void insertProduct(ProductVO vo) {
		productDAO.insertProduct(vo);

	}
	//상품 전체 조회
	public List<ProductVO> selectAllProduct() {
		
		return productDAO.selectAllProduct();
	}
	
	//상품 페이징해서 출력
	public List<ProductVO> getProductList(Criteria cri) {
		return productDAO.getProductList(cri);
	}
	
	//상품 갯수 출력
	public int getTotal(ProductVO vo) {
		return productDAO.getTotal(vo);
	}

	//상품 카테고리 별로 출력
	public List<ProductVO> getCategoryList(ProductVO vo){
		 return productDAO.getCategoryList(vo);
	}
	//상품 상세 페이지 출력
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
	}
	// 상품 수정
	public void updateProduct(ProductVO vo) {
		productDAO.updateProduct(vo);
	}
	// 상품 삭제
	public void deleteProduct(ProductVO vo) {
		productDAO.deleteProduct(vo);
	}

	// 리뷰 작성
	public void insertReview(ReviewVO vo) {
		productDAO.insertReview(vo);
	}
	
	// 리뷰 조회
	public List<ReviewVO> getReview(Integer product_number) {
		return productDAO.getReview(product_number);
	}
	
	// 조회수+1  
	public void hitsplus(Integer product_number) {
		productDAO.hitsplus(product_number);
	}
	
	// 베스트 상품 출력
	public List<ProductVO> topProduct(ProductVO vo) {
		return productDAO.topProduct(vo);
	}
	
	// 신상품 출력
	public List<ProductVO> newProduct(ProductVO vo) {
		return productDAO.newProduct(vo);
	}
	
	// 배송 완료 시 재고 하나씩 줄어듬
	public void ordercount(ProductVO vo) {
		productDAO.ordercount(vo);
	}
	
	
}