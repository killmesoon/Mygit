package com.bjbr.pojo;
/**
 * 套餐的实体类
 * @author Dong
 *
 */
public class ExamSuit {
	
	private Integer ID_ExamSuite ;
	private String ExamSuite_Name;
	private double Price;
	private boolean sex;//表中是两个字段来维护，我们只用一个，非男即女
	public Integer getID_ExamSuite() {
		return ID_ExamSuite;
	}
	public void setID_ExamSuite(Integer iD_ExamSuite) {
		ID_ExamSuite = iD_ExamSuite;
	}
	public String getExamSuite_Name() {
		return ExamSuite_Name;
	}
	public void setExamSuite_Name(String examSuite_Name) {
		ExamSuite_Name = examSuite_Name;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	
	

}
