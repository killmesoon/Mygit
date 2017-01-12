package com.bjbr.bean;

public class Items {
	
	private int id;
	private String iname;
	private String isex;
	private String idesc;
	private String iprice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getIsex() {
		return isex;
	}
	public void setIsex(String isex) {
		this.isex = isex;
	}
	public String getIdesc() {
		return idesc;
	}
	public void setIdesc(String idesc) {
		this.idesc = idesc;
	}
	public String getIprice() {
		return iprice;
	}
	public void setIprice(String iprice) {
		this.iprice = iprice;
	}
	@Override
	public String toString() {
		return "Items [id=" + id + ", iname=" + iname + ", isex=" + isex + ", idesc=" + idesc + ", iprice=" + iprice
				+ "]";
	}
	

}
