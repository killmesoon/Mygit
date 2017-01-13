package com.bjbr.pojo;



public class User {
	
	private String userid;
	private String password;
	private String  name ;
	private String uid;//身份证
	private String marriage;
	private String gender;
	private String telephone;
	private String age;
	private int ischeck;
	private String date;//日期
	private String ordernumber;//订单号
	private String suit;//套餐
	private int isOnlineReport;//是否在线报告
	private String recordTime;//创建时间
	private int  suit_id;//套餐ID
	private String ordertime;//预约时间
	private float suit_price;//套餐价格
	
	
	public String getSuit() {
		return suit;
	}
	public void setSuit(String suit) {
		this.suit = suit;
	}
	public int getIscheck() {
		return ischeck;
	}
	public void setIscheck(int ischeck) {
		this.ischeck = ischeck;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
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
	
	
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	
	
	
	public int getIsOnlineReport() {
		return isOnlineReport;
	}
	public void setIsOnlineReport(int isOnlineReport) {
		this.isOnlineReport = isOnlineReport;
	}
	
	
	
	
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	
	
	
	
	public int getSuit_id() {
		return suit_id;
	}
	public void setSuit_id(int suit_id) {
		this.suit_id = suit_id;
	}
	
	
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	
	
	
	public float getSuit_price() {
		return suit_price;
	}
	public void setSuit_price(float suit_price) {
		this.suit_price = suit_price;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", password=" + password + ", name=" + name + ", uid=" + uid + ", marriage="
				+ marriage + ", gender=" + gender + ", telephone=" + telephone + ", age=" + age + ", ischeck=" + ischeck
				+ ", date=" + date + ", ordernumber=" + ordernumber + ", suit=" + suit + ", isOnlineReport="
				+ isOnlineReport + ", recordTime=" + recordTime + ", suit_id=" + suit_id + ", ordertime=" + ordertime
				+ "]";
	}
	
	
	
	
	
	
}
