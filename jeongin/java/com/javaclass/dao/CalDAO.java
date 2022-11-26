package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

public interface CalDAO {

	//월별 통계 얻어옴
	List<HashMap<String, Integer>> getMonthCal();

	//기간내 월별 통계 얻어옴
	List<HashMap<String, Integer>> selectCal(HashMap<String, String> map);

	//상품별 통계 얻어옴
	List<HashMap<String, Integer>> getItemCal();
	
	//상품별 통계 검색결과
	List<HashMap> selectItemCal(HashMap map);
}