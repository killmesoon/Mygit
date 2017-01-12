package com.bjbr.service;

import java.sql.SQLException;
import java.util.List;

import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;

public interface UserService {
	
	/**
	 * 
	 * @param userid 用户名
	 * @param pwd  密码
	 * @return
	 * @throws SQLException
	 */
	 public User login(String userid,String pwd) throws SQLException;
	 
	 //注册
	 /**
	  * 
	  * @param u
	  * @return如果返回值为2说明用户已存在，否则进行注册.
	  * @throws SQLException
	  */
	 public int register(User u) throws SQLException;
	 
	 
	 
	 
	 /**
	  * 
	  * @param u
	  * @return
	  * @throws SQLException
	  */
	 public int commitInfo(User u) throws SQLException;
	 
	 
	 /**
	  * 提交日期和打印报告表单的方法
	  * @param u
	  * @return
	  * @throws SQLException
	  */
	 public int commitOrder(User u) throws SQLException;
	 
	 
	 
	 
	 public  boolean isUserExist(String userid)throws SQLException;
	 
	 
	 
	 
	 public int commitToManager(User u)throws SQLException;
	 
	 //获取套餐列表
	 
	
	 public int insertIntoPP(User u)throws SQLException;
	 
	 
	 //插入信息
	 
	 public int addPeisPatient(User u)throws SQLException;
	 
	 
	 //生成日期流水号
	 
	 public String getDateOrderNumer(Long datetime)throws SQLException;
	 
	 
	 //查询预约量
	 
	 public int getTotalOrderCount(Long datetime)throws SQLException;
	 
	 
	 //查询日期流水号
	 public int getTotalOrderCountByOrder(Long datetime)throws SQLException;

	 
	 //查询用户预约订单信息
	public List<User> findOrderByUserId(User user)throws SQLException;
	
	
	//查询用户
	
	public User confirmUser(String userid,String pwd)throws SQLException;
	
	
	//修改密码
	
	public int updatePwd(String userid,String pwd)throws SQLException;
	
	/**
	 * 修改用户资料
	 */
	public void updateUserInfo(UserInfo uinfo)throws SQLException;
	
	
	/**
	 * 查询更改过的用户个人资料
	 */
	public UserInfo queryUserAllInfo(String userid)throws SQLException; 
	
	 
	 

}
