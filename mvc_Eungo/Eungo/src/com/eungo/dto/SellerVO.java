package com.eungo.dto;

public class SellerVO {
	private String email;
	private int bank_code_std;
	private String bank_name;
	private long account_num;
	private int account_holder_info;
	private int income;
	private String seller_intro;
	
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBank_code_std() {
		return bank_code_std;
	}
	public void setBank_code_std(int bank_code_std) {
		this.bank_code_std = bank_code_std;
	}
	public long getAccount_num() {
		return account_num;
	}
	public void setAccount_num(long account_num) {
		this.account_num = account_num;
	}
	public int getAccount_holder_info() {
		return account_holder_info;
	}
	public void setAccount_holder_info(int account_holder_info) {
		this.account_holder_info = account_holder_info;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getSeller_intro() {
		return seller_intro;
	}
	public void setSeller_intro(String seller_intro) {
		this.seller_intro = seller_intro;
	}
}
