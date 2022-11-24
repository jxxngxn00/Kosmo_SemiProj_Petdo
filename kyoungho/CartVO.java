package com.javaclass.domain;

public class CartVO {
	private int cart_number;
	private String product_name;
	private int product_count;
	private int product_number;
	private String user_id;
	
	//getter, setter
	public int getCart_number() {
		return cart_number;
	}
	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	//생성자
	public CartVO(int cart_number, String product_name, int product_count, int product_number, String user_id) {
		super();
		this.cart_number = cart_number;
		this.product_name = product_name;
		this.product_count = product_count;
		this.product_number = product_number;
		this.user_id = user_id;
	}
	//기본생성자
	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CartVO [cart_number=" + cart_number + ", product_name=" + product_name + ", product_count="
				+ product_count + ", product_number=" + product_number + ", user_id=" + user_id + "]";
	}

}