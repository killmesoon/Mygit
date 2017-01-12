package com.test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import com.bjbr.Utils.JDBCUtil;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

public class TimeTest {
	
	static java.util.Date date = new java.util.Date();
	  
	
	
	public static void main(String[] args) {
		int count = testCount();
	
		System.out.println("-------------"+count);
		
	}
  
	
	
	public static int countTime()
	{
		String sql="select userid from [HerPeisXK].[dbo].[PeisPatientRelation] where ordertime=?";
		int count=0;
		try {
			Connection con = JDBCUtil.getConnect();
			long time = date.getTime();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setDate(1, new Date(time));
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				System.out.println(rs.getString("userid"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return count;
	}
  
	
	public static int  testCount()
	{    
		int count = 0;
		UserDao dao = new UserDaoImpl();
		long timeMillis = System.currentTimeMillis();
		try {
			 count = dao.queryPrecallTime(timeMillis);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return count;
	}
	
	
	@Test
	public void testmytime()
	{
		UserDao dao = new UserDaoImpl();
		try {
			int rows = dao.queryPrecallTime(System.currentTimeMillis());
			System.out.println(rows);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}
