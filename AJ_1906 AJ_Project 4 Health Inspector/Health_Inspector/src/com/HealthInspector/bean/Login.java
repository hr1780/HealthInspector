package com.HealthInspector.bean;

public class Login {
private String userid;
private String pass;
public Login() {
	super();
	// TODO Auto-generated constructor stub
}
public Login(String userid, String pass) {
	super();
	this.userid = userid;
	this.pass = pass;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}

}
