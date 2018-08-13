package com.baedal.model;

public class customVO {

	private String cid;				//고객 아이디
	private	String cpwd;			//고객 비번
	private	String cname;		//고객 이름
	private	String cemail;		//고객 이메일
	private	int ctel;					//고객 전화번호
	private	String caddr;			//고객 주소
	private long kakaoid;		//카카오 연동 아이디

	public String getCid() {
		return cid == null ? "" : cid.trim();
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCpwd() {
		return cpwd == null ? "" : cpwd.trim();
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public String getCname() {
		return cname == null ? "" : cname.trim();
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail == null ? "" : cemail.trim();
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public int getCtel() {
		return ctel;
	}
	public void setCtel(int ctel) {
		this.ctel = ctel;
	}
	public String getCaddr() {
		return caddr == null ? "" : caddr.trim();
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public long getKakaoid() {
		return kakaoid;
	}
	public void setKakaoid(long kakaoid) {
		this.kakaoid = kakaoid;
	}
	
	
	
}
