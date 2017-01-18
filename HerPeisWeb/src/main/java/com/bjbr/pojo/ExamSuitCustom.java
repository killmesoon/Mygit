package com.bjbr.pojo;

public class ExamSuitCustom extends ExamSuit {
    
	
	
	private Integer ID_ExamFeeItem;
	
	private String itemName;
	
	private double suitPrice;

	public Integer getID_ExamFeeItem() {
		return ID_ExamFeeItem;
	}

	public void setID_ExamFeeItem(Integer iD_ExamFeeItem) {
		ID_ExamFeeItem = iD_ExamFeeItem;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public double getSuitPrice() {
		return suitPrice;
	}

	public void setSuitPrice(double suitPrice) {
		this.suitPrice = suitPrice;
	}
	
	
	
}
