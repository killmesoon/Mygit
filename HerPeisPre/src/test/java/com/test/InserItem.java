package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import com.bjbr.Utils.JDBCUtil;

public class InserItem {
	
	
	@Test
	public void addItem()
	{
		
		String sql  = "insert into  [HerPeisXK].[dbo].[HerQuestionItemDetail] (answer_text ,question_id ) values(?,?)";
     
     
		try {
			
			Connection con = JDBCUtil.getConnect();
			PreparedStatement pst = con.prepareStatement(sql);
	   pst.setString(1, "均无");
	  pst.setInt(2, 28);		
	  int rows = pst.executeUpdate();
	  System.out.println(rows+"行受影响");
	  JDBCUtil.release(con, pst);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void queryList()
	{
		String sql  = "select answer_text from  [HerPeisXK].[dbo].[HerQuestionItemDetail] where question_id =?";
		Connection con;
		try {
			con = JDBCUtil.getConnect();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, 5);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("answer_text"));
			}
			JDBCUtil.release(con, pst, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	

}
