package com.javaclass.domain;

import lombok.Data;

@Data
public class Criteria {
 private int pageNum;
 private int amount;
 //private String keyword;
 
 public Criteria() {
	 this(1,12);
 }
 
 public Criteria (int pageNum, int amount) {
	 this.pageNum = pageNum;
	 this.amount = amount;
 }
 

 
}