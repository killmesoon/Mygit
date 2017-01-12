package com.bjbr.bean;

public class UserInfo extends User {

	private String address;
	private String job;
	private String city;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "UserInfo [address=" + address + ", job=" + job + ", city=" + city + "]";
	}
	
	
	
}
