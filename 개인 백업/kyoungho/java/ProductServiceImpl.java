package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.ProductDAOImpl;

import com.javaclass.domain.ProductVO;


@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAOImpl productDAO;

	
	public void insertProduct(ProductVO vo) {
		productDAO.insertProduct(vo);

	}
	
	public List<ProductVO> selectAllProduct() {
		
		return productDAO.selectAllProduct();
	}
	

	public List<ProductVO> getProductList(ProductVO vo) {
		return productDAO.getProductList(vo);
	}

}
