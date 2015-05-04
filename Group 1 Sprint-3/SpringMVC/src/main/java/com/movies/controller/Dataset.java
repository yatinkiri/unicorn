package com.movies.controller;

public class Dataset {
	private String uname;
	private String pass;
	private String fname;
	private String lname;
	private String email;
	private String city;
	
	public Dataset()
	{
		uname="";
		pass="";
		fname="";
		lname="";
		email="";
		city="";
		
	}
	
	
	public Dataset(String uname, String pass, String fname, String lname,
			String email, String city) {
		super();
		this.uname = uname;
		this.pass = pass;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.city = city;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	

}
