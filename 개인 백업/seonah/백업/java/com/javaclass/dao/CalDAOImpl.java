package com.javaclass.dao;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("CalDAO")
public class CalDAOImpl implements CalDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//월별 통계 얻어옴
	@Override
	public List<HashMap<String,Integer>> getMonthCal() {
		return mybatis.selectList("CalDAO.getMonthCal");
	}
	
	//기간내 월별 통계 얻어옴
	@Override
	public List<HashMap<String,Integer>> selectCal(HashMap<String, String> map) {
		return mybatis.selectList("CalDAO.selectCal",map);
	}
	
	//상품별 통계 얻어옴
	@Override
	public List<HashMap<String, Integer>> getItemCal() {
		return mybatis.selectList("CalDAO.getItemCal");
	}
	
	//상품별 통계 검색 결과
	@Override
	public List selectItemCal(HashMap map) {
		System.out.println(">>> CalDAOImpl : "+map);
		List result=mybatis.selectList("CalDAO.selectItemCal",map);
		/*
		 * for(HashMap mp : result) { System.out.println(mp); }
		 */
		return result;
	}
}
