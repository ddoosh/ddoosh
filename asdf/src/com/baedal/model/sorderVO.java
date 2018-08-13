package com.baedal.model;

public class sorderVO {
	private String cid; //고객
	private long snum; //숍
	private String order_date; //구매날짜
	private long order_num; //구매번호
	private int order_state; //주문상태
	private int amount; //가격
	private String caddr; //주소
	
	
	
	public String getCaddr() {
		return caddr == null ? "" : caddr.trim();
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
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
	public String getOrder_date() {
		return order_date == null ? "" : order_date.trim();
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(long order_num) {
		this.order_num = order_num;
	}
	public int getOrder_state() {
		return order_state;
	}
	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	

}
