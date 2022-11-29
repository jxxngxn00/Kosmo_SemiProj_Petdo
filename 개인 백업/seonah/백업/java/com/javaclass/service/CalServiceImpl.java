package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.CalDAO;

@Service("CalService")
public class CalServiceImpl implements CalService {
	
	@Autowired
	private CalDAO calDAO;
	
	//월별 수익 조회
	@Override
	public List<HashMap<String,Integer>> getMonthCal() {
		return calDAO.getMonthCal();
	}
	
	//기간내 월별 수익 조회
	public List<HashMap<String,Integer>> selectCal(HashMap<String, String> map) {
		return calDAO.selectCal(map);
	}

	//상품별 통계
	@Override
	public List<HashMap<String, Integer>> getItemCal() {
		return calDAO.getItemCal();
	}
	
	//상품별 통계 검색 결과
	@Override
	public List<HashMap> selectItemCal(HashMap map) {
		return calDAO.selectItemCal(map);
	}
	
	
	
	
	
}
