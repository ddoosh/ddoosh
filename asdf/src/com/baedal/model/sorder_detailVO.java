package com.baedal.model;

public class sorder_detailVO {

	private long order_detail_num; //디테일 넘버
	private long order_num; //주문번호
	private String mcode; //주문메뉴
	
	public long getOrder_detail_num() {
		return order_detail_num;
	}
	public void setOrder_detail_num(long order_detail_num) {
		this.order_detail_num = order_detail_num;
	}
	public long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(long order_num) {
		this.order_num = order_num;
	}
	public String getMcode() {
		return mcode == null ? "" : mcode.trim();
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	

}
