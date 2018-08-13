package com.baedal.model;

public class reviewVO {
	private long reviewnum;
	private String cid;
	private long snum;
	private String ccontent;
	private String scontent;
	private String cinput_date;
	private String sinput_date;
	
	
	
	public long getReviewnum() {
		return reviewnum;
	}
	public void setReviewnum(long reviewnum) {
		this.reviewnum = reviewnum;
	}
	public String getCid() {
		return cid == null ? "" : cid.trim();
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public long getSnum() {
		return snum;
	}
	public void setSnum(long snum) {
		this.snum = snum;
	}
	public String getCcontent() {
		return ccontent == null ? "" : ccontent.trim();
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getScontent() {
		return scontent == null ? "" : scontent.trim();
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getCinput_date() {
		return cinput_date == null ? "" : cinput_date.trim();
	}
	public void setCinput_date(String cinput_date) {
		this.cinput_date = cinput_date;
	}
	public String getSinput_date() {
		return sinput_date == null ? "" : sinput_date.trim();
	}
	public void setSinput_date(String sinput_date) {
		this.sinput_date = sinput_date;
	}
	
	
	
}
