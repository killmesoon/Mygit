package com.bjbr.pojo;

public class QueryExample {
	//用户类
	private User user;
	//用户扩展类
	private UserCustom userCustom;
	
	//项目扩展类
	private ExamSuitCustom   examSuitCustom;
	
	
	
	
	//...(各种查询条件)
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserCustom getUserCustom() {
		return userCustom;
	}
	public void setUserCustom(UserCustom userCustom) {
		this.userCustom = userCustom;
	}
	public ExamSuitCustom getExamSuitCustom() {
		return examSuitCustom;
	}
	public void setExamSuitCustom(ExamSuitCustom examSuitCustom) {
		this.examSuitCustom = examSuitCustom;
	}
	
	
      
}
