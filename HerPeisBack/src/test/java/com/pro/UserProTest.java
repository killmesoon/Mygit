package com.pro;

import org.junit.Test;

import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

public class UserProTest {
	
	UserDao dao = new UserDaoImpl();
	@Test
	public void testUserPro() throws Exception
	{
		dao.callProcess(null);
		
		
	}

}
