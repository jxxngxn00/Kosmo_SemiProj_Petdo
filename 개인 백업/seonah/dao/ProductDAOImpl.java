package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.OrderDetailVO;
import com.javaclass.domain.ProductVO;
import com.javaclass.domain.ReviewVO;

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


	//상품전체 조회 mybatis 호출
	  public List<ProductVO> getProductList(Criteria cri) {
		  System.out.println("====> Mybatis로 getProductList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getProductList", cri);
		   
	  }
	  
	//상품갯수 조회 mybatis 호출
	  public int getTotal(ProductVO vo) {
		  System.out.println("====> Mybatis로 getTotal() 기능 처리");
		 return mybatis.selectOne("ProductDAO.getTotal", vo);
		  
	  }
	
	  //상품 카테고리 별로 mybatis 호출
	  public List<ProductVO> getCategoryList(ProductVO vo){
		  System.out.println("====> Mybatis로 getCategoryList() 기능 처리");
		  return mybatis.selectList("ProductDAO.getCategoryList", vo);
	  };
	  
	  //상품 상세 페이지 mybatis 호출
	  public ProductVO getProduct(ProductVO vo) {
		  System.out.println("====> Mybatis로 getProduct() 기능 처리");
		  System.out.println(vo);
		  return mybatis.selectOne("ProductDAO.getProduct",vo);
	  }
	 
	  public void updateProduct(ProductVO vo)	{
		  System.out.println("====> Mybatis로 updateProduct() 기능 처리");
		  System.out.println(vo);
		  mybatis.update("ProductDAO.updateProduct",vo);
		  
	  }
	  public void deleteProduct(ProductVO vo)	{
		  System.out.println("====> Mybatis로 deleteProduct() 기능 처리");
		  System.out.println(vo);
		  mybatis.delete("ProductDAO.deleteProduct",vo);
		  
	  }
	  
	  // 리뷰 작성
	  public void insertReview(ReviewVO vo) {
		  System.out.println("====> Mybatis로 insertReview 기능 처리");
		  System.out.println(vo);
		  mybatis.insert("ProductDAO.insertReview",vo);
	  }
	  
	  // 리뷰 조회
	  public List<ReviewVO> getReview(Integer product_number) {
		  System.out.println("====> Mybatis로 getReview 기능 처리");
		  return mybatis.selectList("ProductDAO.getReview",product_number);
	  }
	  
	  // 조회수 증가
	  	public void hitsplus(Integer product_number) {
	  		mybatis.update("ProductDAO.hitsplus",product_number);
	}
	  
	  // 베스트 상품 출력
	  	public List<ProductVO> topProduct(ProductVO vo) {
	  		return mybatis.selectList("ProductDAO.topProduct",vo);
	  	}
	  	
	 // 신상품 출력
		public List<ProductVO> newProduct(ProductVO vo) {
			return mybatis.selectList("ProductDAO.newProduct",vo);
		}
		
	// 재고 수량 조절
		public void ordercount(ProductVO vo) {
			 System.out.println("====> Mybatis로 ordercount() 기능 처리");
			  mybatis.update("ProductDAO.ordercount",vo);
		}
}