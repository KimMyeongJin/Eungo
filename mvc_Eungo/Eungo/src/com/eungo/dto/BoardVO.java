package com.eungo.dto;

public class BoardVO {
	private String email;
	private int lnumber;
	private String ltitle;
	private String lcontent;
	private String limage;
	private String lcategory;
	private int lprice;
	private int lsellcount;
	private int lviewcount;
	private String lcomment;
	private String lrule;
	private String ldate;
	private int good;	
	
	
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public String getLdate() {
		return ldate;
	}
	public void setLdate(String ldate) {
		this.ldate = ldate;
	}
	public String getLcontent() {
		return lcontent;
	}
	public void setLcontent(String lcontent) {
		this.lcontent = lcontent;
	}
	public String getLimage() {
		return limage;
	}
	public void setLimage(String limage) {
		this.limage = limage;
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
	public String getLtitle() {
		return ltitle;
	}
	public void setLtitle(String ltitle) {
		this.ltitle = ltitle;
	}
	public String getLcategory() {
		return lcategory;
	}
	public void setLcategory(String lcategory) {
		this.lcategory = lcategory;
	}
	public int getLprice() {
		return lprice;
	}
	public void setLprice(int lprice) {
		this.lprice = lprice;
	}
	public int getLsellcount() {
		return lsellcount;
	}
	public void setLsellcount(int lsellcount) {
		this.lsellcount = lsellcount;
	}
	public int getLviewcount() {
		return lviewcount;
	}
	public void setLviewcount(int lviewcount) {
		this.lviewcount = lviewcount;
	}
	public String getLcomment() {
		return lcomment;
	}
	public void setLcomment(String lcomment) {
		this.lcomment = lcomment;
	}
	public String getLrule() {
		return lrule;
	}
	public void setLrule(String lrule) {
		this.lrule = lrule;
	}
	
}
