package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

public interface CalService {

	//월별 수익 조회
	List<HashMap<String, Integer>> getMonthCal();
	
	//기간내 월별 수익 조회
	List<HashMap<String,Integer>> selectCal(HashMap<String, String> map);
	
	//상품별 통계
	List<HashMap<String, Integer>> getItemCal();
	
	//상품별 통계 검색 결과
	List<HashMap> selectItemCal(HashMap map);
	
}