package com.eungo.dto;

public class ReplyVO {
	private int reply_number;
	private String reply_comment;
	private String reply_answer;
	private int star;
	private int lnumber;
	private String email;
	private int pur_number;
	private String re_date;
	private String an_date;
	private boolean del;
	private String del_date;
	
	public boolean isDel() {
		return del;
	}
	public void setDel(boolean del) {
		this.del = del;
	}
	public String getDel_date() {
		return del_date;
	}
	public void setDel_date(String del_date) {
		this.del_date = del_date;
	}
	public int getPur_number() {
		return pur_number;
	}
	public void setPur_number(int pur_number) {
		this.pur_number = pur_number;
	}	
	public String getRe_date() {
		return re_date;
	}
	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}
	public String getAn_date() {
		return an_date;
	}
	public void setAn_date(String an_date) {
		this.an_date = an_date;
	}
	public int getReply_number() {
		return reply_number;
	}
	public void setReply_number(int reply_number) {
		this.reply_number = reply_number;
	}
	public String getReply_comment() {
		return reply_comment;
	}
	public void setReply_comment(String reply_comment) {
		this.reply_comment = reply_comment;
	}
	public String getReply_answer() {
		return reply_answer;
	}
	public void setReply_answer(String reply_answer) {
		this.reply_answer = reply_answer;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getLnumber() {
		return lnumber;
	}
	public void setLnumber(int lnumber) {
		this.lnumber = lnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
