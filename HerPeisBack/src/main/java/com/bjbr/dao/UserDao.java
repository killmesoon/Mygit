package com.bjbr.dao;

import java.util.List;

import com.bjbr.bean.ItemPass;
import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;

public interface UserDao {

	
	public User findUserByName(String name,String pwd) throws Exception;
	
	
	public List<UserInfo> showUserInfo()throws Exception;
	
	
	//审批预约信息
	
	public int changeUserPass(int [] id) throws Exception;
	
	//根据传来的ID的值 查到相应的ispass的值
	
	public int queryIspass(int ispassid) throws Exception;
	
	
	public int changeIspass(List<ItemPass> list) throws Exception;


	public List<UserInfo> finUserByIscheck()throws Exception;


	public UserInfo findUserByIspass(List<ItemPass> list)throws Exception;


	public void insertIntoPP(UserInfo userInfo)throws Exception;


	public void inserIntoPpByProcess(UserInfo u)throws Exception;
	
	
	public List<UserInfo> queryUserByDate(String date1,String date2)throws Exception;

   /**
    * 调用存储过程插入PP表
    * @param usertobr
    */
	public void callProcess(UserInfo usertobr)throws Exception;


	
	
}
