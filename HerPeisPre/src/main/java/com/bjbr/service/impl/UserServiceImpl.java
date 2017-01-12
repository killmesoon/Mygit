package com.bjbr.service.impl;

import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;
import com.bjbr.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao dao = new UserDaoImpl();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");

	@Override
	public User login(String userid, String pwd) throws SQLException {
		
		return dao.findUser(userid, pwd);
	}

	@Override
	public int register(User u) throws SQLException {
		  User user = dao.findUserByName(u.getUserid());
		  if(user!=null){
			  //说明存在  返回2;
			  return 2;
		  }
		  //存这个传过来的U
		return dao.save(u);
	}

	@Override
	public int commitInfo(User u) throws SQLException {
		return dao.inserPreInfo(u);
	}

	@Override
	public int commitOrder(User u) throws SQLException {
		
		return dao.inserUserOrder(u);
	}

	@Override
	public boolean isUserExist(String userid) throws SQLException {
		// 是否存在用户名
		User u = dao.findUserByName(userid);
		if(u==null){
			//说明用户不存在
			return false;
		}else{
			return true;
		}
		
	}

	@Override
	public int commitToManager(User u) throws SQLException {
		
		return dao.insertToManager(u);
	}

	@Override
	public int insertIntoPP(User u) throws SQLException {
		
		return dao.inserIntoPeisPatient(u);
	}

	@Override
	public int addPeisPatient(User u) throws SQLException {
		// TODO Auto-generated method stub
		return dao.addPeisPatient(u);
	}

	@Override
	public String getDateOrderNumer(Long datetime) throws SQLException {
		// 传入当日信息，生成订单流水号 
		//timeid 是查询出的日期最大数量，生成订单号时 "00"+timeid
		int timeid = dao.queryPrecallTime(datetime);
		System.out.println(timeid);
	  int	myid=timeid+1;
		Date date = new Date(datetime);
		//临时日期格式20151215
		String temp = sdf.format(date);
		String orderID= "wz"+temp+myid;
		
		
		return orderID ;
	}

	@Override
	public int getTotalOrderCount(Long datetime) throws SQLException {
		int timeid = dao.queryPrecallTimeByOrder(datetime);
		return timeid;
	}

	@Override
	public int getTotalOrderCountByOrder(Long datetime) throws SQLException {
		// TODO Auto-generated method stub
		return dao.queryPrecallTimeByOrder(datetime);
	}

	@Override
	public List<User> findOrderByUserId(User user) throws SQLException {
		List<User> list = dao.findOrderById(user);
		
		
		List<User> orderlist = dao.queryOrderPrice(list);
		
		
		
		
		return orderlist;
	}

	@Override
	public User confirmUser(String userid, String pwd) throws SQLException {
		
		
		
		
		return dao.findUser(userid, pwd);
	}

	@Override
	public int updatePwd(String userid, String pwd) throws SQLException {
		// 更新密码
		
		return dao.changePassword(userid,pwd);
		
	}

	@Override
	public void updateUserInfo(UserInfo uinfo) throws SQLException {
		
		dao.updateUserInfo(uinfo);
		
		
	
	}

	@Override
	public UserInfo queryUserAllInfo(String userid) throws SQLException {
		
		
		
		
		return dao.queryUserAllInfo(userid);
	}

	

}
