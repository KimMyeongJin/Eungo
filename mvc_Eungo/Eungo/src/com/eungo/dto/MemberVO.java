package com.eungo.dto;

public class MemberVO {
	private String email;
	private boolean emailcheck;
	private String password;
	private String salt;
	private String phonenumber;
	private String gender;
	private String birthday;
	private boolean seller;	
	
	public boolean isSeller() {
		return seller;
	}
	public void setSeller(boolean seller) {
		this.seller = seller;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isEmailcheck() {
		return emailcheck;
	}
	public void setEmailcheck(boolean emailcheck) {
		this.emailcheck = emailcheck;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}	
}
