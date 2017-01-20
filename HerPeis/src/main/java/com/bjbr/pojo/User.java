package com.bjbr.pojo;

public class User {
//	,[password]
//    ,[name]
//    ,[phone]
//    ,[birthday]
//    ,[idcard]
//    ,[sex]
//    ,[city]
//    ,[job]
//    ,[ismarriage]
//    ,[address]
	
	
	private String user_id;//用户登录名
	private String password;//登录密码
	private String name;//用户姓名
	private String phone;//电话
	private String birthday;//生日
	private String sex;//用户性别
	private String city;//城市
	private String job;//职业
	private String ismarriage;//婚姻
	private String address;//地址
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getIsmarriage() {
		return ismarriage;
	}
	public void setIsmarriage(String ismarriage) {
		this.ismarriage = ismarriage;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
