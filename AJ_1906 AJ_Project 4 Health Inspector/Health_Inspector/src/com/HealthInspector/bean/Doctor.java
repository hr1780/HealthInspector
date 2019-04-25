package com.HealthInspector.bean;

public class Doctor {

	private String did;
	private String name;
	private String spec;
	private String shift;
	private String cno;
	private String address;
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Doctor(String did, String name, String spec, String shift, String cno, String address) {
		super();
		this.did = did;
		this.name = name;
		this.spec = spec;
		this.shift = shift;
		this.cno = cno;
		this.address = address;
	}
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getShift() {
		return shift;
	}
	public void setShift(String shift) {
		this.shift = shift;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
