package com.javaclass.domain;




public class Criteria {

	//페이지 번호
	private int pageNum;
	// 한페이지 당 글 갯수
	private int amount;
	
	
 public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}



 
 public Criteria() {
	 this(1,12);
 }
 
 public Criteria (int pageNum, int amount) {
	 this.pageNum = pageNum;
	 this.amount = amount;
	 
	
 }
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + "]";
	}


 
}