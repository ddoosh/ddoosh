package com.baedal.model;

public class customVO {

	private String cid;				//�� ���̵�
	private	String cpwd;			//�� ���
	private	String cname;		//�� �̸�
	private	String cemail;		//�� �̸���
	private	int ctel;					//�� ��ȭ��ȣ
	private	String caddr;			//�� �ּ�
	private long kakaoid;		//īī�� ���� ���̵�

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
