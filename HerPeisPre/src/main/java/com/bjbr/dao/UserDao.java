package com.bjbr.dao;

import java.math.BigDecimal;

import java.sql.SQLException;

import java.util.List;

import com.bjbr.bean.ItemDetail;
import com.bjbr.bean.Items;

import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;

public interface UserDao {
	//登录
	public User findUser(String userid,String pwd) throws SQLException;
	//用户名是否存在
	 public User findUserByName(String userid) throws SQLException;
	//注册成功，存入用户数据 
	 public int  save(User u) throws SQLException;
	 
	 //需要一个向另一张表保存数据的方法
	 
	 public int insertToManager(User u)throws SQLException;
	 
	 
	 //导入预约人信息
	 
	 public int inserPreInfo(User u ) throws SQLException;
	 
	 
	 //导入订单信息
	 
	 public int inserUserOrder(User u ) throws SQLException;
	 
	 
	 //查询套餐项目
	 
	 public List<Items> queryItems()throws SQLException;
	 
	 
     //套餐明细
	 
	 public List<ItemDetail> queryItemsDetail(int sid)throws SQLException;
	 
	 //总价
	 public BigDecimal queryTotalPrice(int sid)throws SQLException;
	 
	 
	 
	 //套餐名
	 public String queryItemName(int sid)throws SQLException;
	 
	 
	 
	 //具体套餐信息
	 
	 public List<ItemDetail> queryItemFeeName(List<ItemDetail> list)throws SQLException;
	 
	 
	 
	 //修改pp表的字段
	 
	 public int inserIntoPeisPatient(User u)throws SQLException;
	 
	 
	 //
	 
	 public int addPeisPatient(User u)throws SQLException;
	 
	 
	 
	 //流水号维护表
	 public int addOrderNumber(String orderId)throws SQLException;
	 
	 public int queryOrderNumber(String orderId)throws SQLException;
	 
	 //查询预约当日的数
	 public int  queryPrecallTime(Long datetime)throws SQLException;
	 
	 public int queryPrecallTimeByOrder(Long datetime)throws SQLException;
	 //完成登记(关键)
	public List<User> findOrderById(User user)throws SQLException;
	
	//查询出用户订单信息中的套餐价格
	public List<User> queryOrderPrice(List<User> list)throws SQLException;
	
	
	//修改密码
	public int changePassword(String userid, String pwd)throws SQLException;
	/**
	 * 修改用户资料
	 * @param uinfo
	 */
	public void updateUserInfo(UserInfo uinfo)throws SQLException;
     
	 
	/**
	 *  查询已经保存的用户资料
	 * @param userid
	 * @return
	 * @throws SQLException
	 */
	 
	public UserInfo queryUserAllInfo(String userid)throws SQLException;
	 
}
