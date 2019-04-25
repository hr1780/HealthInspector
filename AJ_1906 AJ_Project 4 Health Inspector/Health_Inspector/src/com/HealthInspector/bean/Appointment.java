package com.HealthInspector.bean;

import java.io.InputStream;

public class Appointment {

	private String name;
	private String age;
	private String gender; 
	private String number;
	private String hname;
	private String city;
	private String facility;
	private InputStream doc;
	private String date;
	
	public Appointment() {
		super();
	}

	public Appointment(String name, String age, String gender, String number, String hname, String city,
			String facility, InputStream doc, String date) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.number = number;
		this.hname = hname;
		this.city = city;
		this.facility = facility;
		this.doc = doc;
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public InputStream getDoc() {
		return doc;
	}

	public void setDoc(InputStream doc) {
		this.doc = doc;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
