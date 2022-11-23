package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.ProductDAOImpl;
import com.javaclass.domain.Criteria;
import com.javaclass.domain.ProductVO;


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
	
	//상품 카테고리별 출력
	public List<ProductVO> getProductList(Criteria cri) {
		return productDAO.getProductList(cri);
	}
	
	//상품 갯수 출력
	public int getTotal(ProductVO vo) {
		return productDAO.getTotal(vo);
	}



	
}