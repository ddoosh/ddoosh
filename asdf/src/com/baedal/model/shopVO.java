package com.baedal.model;

public class shopVO {
	private	long snum;						//���� ����ڹ�ȣ
	private	String sbossname;		//���� ��ǥ��
	private	String sname;				//���� ��ȣ��
	private	String skind;					//���� �����з�
	private	int stel;							//���� �޴�����ȣ
	private	int sshoptel;					//���� ��ȭ��ȣ
	private	String saddr;					//���� �ּ�
	private	String semail;				//���� �̸���
	private	String sid;						//���� ���̵�
	private	String spwd;					//���� ���
	
	
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
