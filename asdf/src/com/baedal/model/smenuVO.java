package com.baedal.model;

public class smenuVO {
	private String mcode; //넘버
	private String menu_maker; //마켓
	private String menu_name; //이름
	private String menu_descript; //내용
	private int menu_price; //가격
	private int menu_side; //사이드 메누
	
	public String getMcode() {
		return mcode == null ? "" : mcode.trim();
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMenu_maker() {
		return menu_maker == null ? "" : menu_maker.trim();
	}
	public void setMenu_maker(String menu_maker) {
		this.menu_maker = menu_maker;
	}
	public String getMenu_name() {
		return menu_name == null ? "" : menu_name.trim();
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_descript() {
		return menu_descript == null ? "" : menu_descript.trim();
	}
	public void setMenu_descript(String menu_descript) {
		this.menu_descript = menu_descript;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public int getMenu_side() {
		return menu_side;
	}
	public void setMenu_side(int menu_side) {
		this.menu_side = menu_side;
	}
	
	

	
}
