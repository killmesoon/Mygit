package com.bjbr.bean;

import java.math.BigDecimal;

public class ItemDetail {
	
	private int examid;
    private String examname;
    private String price;
    private BigDecimal totalprice;
    
	public int getExamid() {
		return examid;
	}

	public void setExamid(int examid) {
		this.examid = examid;
	}

	public String getExamname() {
		return examname;
	}

	public void setExamname(String examname) {
		this.examname = examname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public BigDecimal getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(BigDecimal totalprice) {
		this.totalprice = totalprice;
	}

	
	
}
