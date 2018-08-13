package com.baedal.model;

public class shopVO {
	private	long snum;						//매장 사업자번호
	private	String sbossname;		//매장 대표자
	private	String sname;				//매장 상호명
	private	String skind;					//매장 업종분류
	private	int stel;							//매장 휴대폰번호
	private	int sshoptel;					//매장 전화번호
	private	String saddr;					//매장 주소
	private	String semail;				//매장 이메일
	private	String sid;						//매장 아이디
	private	String spwd;					//매장 비번
	
	
	public long getSnum() {
		return snum;
	}
	public void setSnum(long snum) {
		this.snum = snum;
	}
	public String getSbossname() {
		return sbossname == null ? "" : sbossname.trim();
	}
	public void setSbossname(String sbossname) {
		this.sbossname = sbossname;
	}
	public String getSname() {
		return sname == null ? "" : sname.trim();
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSkind() {
		return skind == null ? "" : skind.trim();
	}
	public void setSkind(String skind) {
		this.skind = skind;
	}
	public int getStel() {
		return stel;
	}
	public void setStel(int stel) {
		this.stel = stel;
	}
	public int getSshoptel() {
		return sshoptel ;
	}
	public void setSshoptel(int sshoptel) {
		this.sshoptel = sshoptel;
	}
	public String getSaddr() {
		return saddr == null ? "" : saddr.trim();
	}
	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}
	public String getSemail() {
		return semail == null ? "" : semail.trim();
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSid() {
		return sid == null ? "" : sid.trim();
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSpwd() {
		return spwd == null ? "" : spwd.trim();
	}
	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}
	

}
