package com.test;

import org.junit.Test;

import com.bjbr.Utils.OrderUtils;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;



public class OrderNumTest {
	
	
	String a = null;
	OrderUtils order =null;
	UserDao  dao = new UserDaoImpl();
	
	@Test
	public void orderTest(){
	 order = OrderUtils.getInstance();
		 a = order.generaterNextNumber(null);
		System.out.println(a);
	String	b=order.generaterNextNumber(a);
		System.out.println(b);
		
		String c =order.generaterNextNumber(b);
		System.out.println(c);
		
		String d = order.generaterNextNumber("wx201612070005");
		System.out.println(d);
		
		
		
		
		
		
	}
	
	

}
