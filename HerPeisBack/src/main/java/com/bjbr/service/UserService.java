package com.bjbr.service;

import com.bjbr.bean.User;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

public class UserService {
	UserDao dao  = new UserDaoImpl();
	

	public User login (String name,String pwd) throws Exception {
		
		
		return dao.findUserByName(name, pwd);
	}
	
	
}
