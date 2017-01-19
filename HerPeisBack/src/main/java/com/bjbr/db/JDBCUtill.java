package com.bjbr.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;


public class JDBCUtill {
	
	private static String driver;
	private static String url;
	private static String user;
	private static String pwd;
	
	static{
		ResourceBundle rb =ResourceBundle.getBundle("db");
		driver=rb.getString("driver");
		url=rb.getString("url");
		user=rb.getString("user");
		pwd=rb.getString("pwd");
		
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public static Connection getConnect() throws SQLException{
		return DriverManager.getConnection(url,user,pwd);
		
	}
	
	
	//释放资源
		public static void release(Connection connect,Statement pstmt,ResultSet rs){
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs=null;
			}
			
			if(pstmt!=null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				pstmt=null;
			}
			
			if(connect!=null){
				try {
					connect.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				connect=null;
			}
		}
		public static void main(String[] args) {
			try {
				Connection con = getConnect();
				System.out.println(con+"success");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		//释放资源 重载
				public static void release(Connection connect,Statement pstmt){
					
					if(pstmt!=null){
						try {
							pstmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						pstmt=null;
					}
					
					if(connect!=null){
						try {
							connect.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						connect=null;
					}
				}
				
	

	

}
