package com.HealthInspector.bean;

public class Register {
	private String userType;
	private String fname;
	private String lname;
	private int age;
	private String gender;
	private long cnumber;
	private String userid;
	private String password;
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Register(String userType, String fname, String lname, int age, String gender, long cnumber, String userid,
			String password) {
		super();
		this.userType = userType;
		this.fname = fname;
		this.lname = lname;
		this.age = age;
		this.gender = gender;
		this.cnumber = cnumber;
		this.userid = userid;
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getCnumber() {
		return cnumber;
	}
	public void setCnumber(long cnumber) {
		this.cnumber = cnumber;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
