package com.baedal.model;

public class sorderVO {
	private String cid; //��
	private long snum; //��
	private String order_date; //���ų�¥
	private long order_num; //���Ź�ȣ
	private int order_state; //�ֹ�����
	private int amount; //����
	private String caddr; //�ּ�
	
	
	
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
