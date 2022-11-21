package com.javaclass.service;

import java.util.List;


import com.javaclass.domain.ProductVO;

public interface ProductService {
	
	void insertProduct(ProductVO vo);

	List<ProductVO> selectAllProduct();
	

}
