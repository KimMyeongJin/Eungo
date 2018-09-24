package com.eungo.dto;

public class SellerVO {
	private String email;
	private int bank_code_std;
	private int account_num;
	private int account_holder_info;
	private int income;
	private String seller_info;
	
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
	public int getAccount_num() {
		return account_num;
	}
	public void setAccount_num(int account_num) {
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
	public String getSeller_info() {
		return seller_info;
	}
	public void setSeller_info(String seller_info) {
		this.seller_info = seller_info;
	}
}
