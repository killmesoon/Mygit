package com.bjbr.bean;

import java.sql.Date;

public class UserInfo {
	
	private int id;
	private String username;
	private String item;
	private String phone;
	private Date date;
	private boolean ispass;
	private String gender;
	private String uname;
	private String predate;
	private String ischeck;
	private String ismarriage;
	private String id_card;
	private String age;
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public boolean isIspass() {
		return ispass;
	}
	public void setIspass(boolean ispass) {
		this.ispass = ispass;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
	public String getPredate() {
		return predate;
	}
	public void setPredate(String predate) {
		this.predate = predate;
		
		
	}
	
	
	
	
	public String getIscheck() {
		return ischeck;
	}
	public void setIscheck(String ischeck) {
		this.ischeck = ischeck;
	}
	
	
	
	
	public String getIsmarriage() {
		return ismarriage;
	}
	public void setIsmarriage(String ismarriage) {
		this.ismarriage = ismarriage;
	}
	public String getId_card() {
		return id_card;
	}
	public void setId_card(String id_card) {
		this.id_card = id_card;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", item=" + item + ", phone=" + phone + ", predate=" + predate + ", ispass=" + ispass
				+ ", gender=" + gender + ", uname=" + uname + "]";
	}
	
	
	

}
