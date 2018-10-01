package com.eungo.dto;

public class PurchaseVO {
	private int pur_number;
	private String email;
	private int lnumber;
	private String product_name;
	private int quantity;
	private String price;
	private String total_price;
	private String date;
	private boolean reply_cheack;
	
	public int getPur_number() {
		return pur_number;
	}
	public void setPur_number(int pur_number) {
		this.pur_number = pur_number;
	}
	public boolean isReply_cheack() {
		return reply_cheack;
	}
	public void setReply_cheack(boolean reply_cheack) {
		this.reply_cheack = reply_cheack;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getLnumber() {
		return lnumber;
	}
	public void setLnumber(int lnumber) {
		this.lnumber = lnumber;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTotal_price() {
		return total_price;
	}
	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
