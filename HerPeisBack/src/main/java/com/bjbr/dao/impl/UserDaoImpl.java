package com.bjbr.dao.impl;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.bjbr.bean.ItemPass;
import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;
import com.bjbr.db.JDBCUtill;

public class UserDaoImpl implements UserDao {

	@Override
	public User findUserByName(String name,String pwd) throws Exception {
		User u = null;
		String sql ="SELECT  * FROM HerAdminUser where adminuser=? and password=?";
  
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, name);
		pst.setString(2, pwd);
		ResultSet rs = pst.executeQuery();
		  if(rs.next()){
			  //说明有结果，可以登录
			  
			  u= new User();
			  
		  }
		
		
		JDBCUtill.release(con, pst,rs);
		
		return u;
	}

	@Override
	public List<UserInfo> showUserInfo() throws Exception {
		UserInfo u = null;
		List<UserInfo> list = null;
   String sql ="SELECT  * FROM PeisPatientRelation";
   Connection con = JDBCUtill.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	list= new ArrayList<UserInfo>();
	while(rs.next()){
		
		//只要能取到下一个 说明有值
		u= new UserInfo();
		u.setUsername(rs.getString("username"));
	    u.setId(rs.getInt("key_id"));
	    u.setGender(rs.getString("Sex"));
	      int row = rs.getInt("ischeck");
	      if(row==0){
	    	  u.setIspass(false);
	    	  
	      }else{
	    	  u.setIspass(true);
	      }
	   u.setItem(rs.getString("item"));
	   u.setPhone(rs.getString("telephone"));
	   u.setDate(rs.getDate("ordertime"));
	   
	   
	   list.add(u);
	      
		
	}
	
	
		return list;
	}

	@Override
	public int changeUserPass(int[] id) throws Exception {
//		String sql = "update [HerPeisXK].[dbo].[HerPreInfo] set ispass=? where id=?";
		int j=0;
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst=null;
		for (int i = 0; i < id.length; i++) {
			String sql = "update PeisPatientRelation set ischeck=? where key_id=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, 1);
			pst.setInt(2, id[i]);
			j = pst.executeUpdate();
			System.out.println("一共审批"+j+"条");
			
		}
		
		JDBCUtill.release(con, pst);
		
		
		
		return j;
	}

	@Override
	public int queryIspass(int ispassid) throws Exception {
		String sql="select ischeck from PeisPatientRelation where key_id=?";
		int ispassval=0;
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, ispassid);
		ResultSet rs = pst.executeQuery();
		if(rs.next()){
			 ispassval = rs.getInt("ischeck");
		}
		
		return ispassval;
	}

	@Override
	public int changeIspass(List<ItemPass> list) throws Exception {
		String sql = "update PeisPatientRelation set ischeck=? where key_id=?";
		int rows =0;
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst = null;
		for(int i=0;i<list.size();i++)
		{
			pst = con.prepareStatement(sql);
			if(list.get(i).getItemispass()==0){
				pst.setInt(1, 1);	
			}else{
				pst.setInt(1, 0);
			}
			
			
			
			
			
			pst.setInt(2, list.get(i).getItemId());
		 rows = pst.executeUpdate();
			
		}
		
		
		System.out.println("更新了"+rows+"行");
		
		return rows;
	}

	@Override
	public List<UserInfo> finUserByIscheck() throws Exception {
		// 根据ischeck标记  返回用户
		String sql = "Select * from PeisPatientRelation where ischeck=?";
		List<UserInfo> list = new ArrayList<UserInfo>();
		 
		Connection con = JDBCUtill.getConnect();
		 PreparedStatement pst = con.prepareStatement(sql);
		 pst.setInt(1, 1);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			UserInfo u = new UserInfo();
		  u.setGender(rs.getString("Sex"));
		  u.setId(rs.getInt("item_id"));
		  u.setItem(rs.getString("item"));
		  u.setPhone(rs.getString("telephone"));
		  u.setDate(rs.getDate("ordertime"));
		  u.setUname(rs.getString("username"));
		 
		  
		  list.add(u);
			
			
		}
		
		
		
		return list;
	}

	@Override
	public UserInfo findUserByIspass(List<ItemPass> list) throws Exception {
		// 审批的某一条记录
		String sql = "Select * from PeisPatientRelation where ischeck=? and key_id=?";
		Connection con = JDBCUtill.getConnect();
		ResultSet rs =null;
		UserInfo u =null;
		for(int i=0;i<list.size();i++)
		{
			
			
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, 1);
			
			pst.setInt(2, list.get(i).getItemId());
		 
			 rs = pst.executeQuery();
			 
			 if(rs.next()){
				 u = new UserInfo();
				 u.setGender(rs.getString("Sex"));
				  u.setId(rs.getInt("item_id"));
				  u.setItem(rs.getString("item"));
				  u.setPhone(rs.getString("telephone"));
				  u.setDate(rs.getDate("ordertime"));
				  u.setUname(rs.getString("username"));
				  u.setIspass(rs.getBoolean("ischeck"));
				  u.setAge(rs.getString("age"));
				  u.setId_card(rs.getString("idcard"));
				  u.setIsmarriage(rs.getString("ismarriage"));
				 
			 }
			
		}
		
		return u;
	}

	@Override
	public void insertIntoPP(UserInfo u) throws Exception {
		//  插入预约信息到PP
		
		String sql ="insert into PeisPatient (PatientName,Sex,Age,IDCardNo,Marriage,Phone,ExamSuite_Name,ExamSuite_Alias) values(?,?,?,?,?,?,?,?)";
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
	
		pst.setString(1, u.getUname());
		pst.setString(2, u.getGender());
		pst.setString(3, "50");
		pst.setString(4, "410232199210222512");
		pst.setString(5, "未婚");
		pst.setString(6,u.getPhone());
		pst.setString(7, u.getItem());
		pst.setString(8, u.getItem());
		
		int rows = pst.executeUpdate();
		
		System.out.println("插入PP"+rows+"行成功");
		
		JDBCUtill.release(con, pst);
		
		
		
	}

	

	@Override
	public List<UserInfo> queryUserByDate(String date1,String date2) throws Exception {
		
		String sql ="select * from  HerPeisXK.dbo.PeisPatientRelation where recordtime between ? and  ?;";
		Connection con = JDBCUtill.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, date1);
		pst.setString(2, date2);
		ResultSet rs = pst.executeQuery();
		List<UserInfo> list = new ArrayList<UserInfo>();
		
		while(rs.next())
		{
			UserInfo u = new UserInfo();
			  u.setGender(rs.getString("Sex"));
			  u.setId(rs.getInt("item_id"));
			  u.setItem(rs.getString("item"));
			  u.setPhone(rs.getString("telephone"));
			  u.setId(rs.getInt("key_id"));
			  
			  u.setDate(rs.getDate("ordertime"));
			  int row = rs.getInt("ischeck");
		      if(row==0){
		    	  u.setIspass(false);
		    	  
		      }else{
		    	  u.setIspass(true);
		      }
			  
			  
			  u.setUname(rs.getString("username"));
			  list.add(u);
			
			
		}
		
		
		return list;
	}

	@Override
	public void callProcess(UserInfo usertobr) throws Exception {
		Connection con = JDBCUtill.getConnect();
		
		 CallableStatement pstmt = con
			     .prepareCall("{call  P_Patient_ScheduleByWeb(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");// 调用存储过程  
		 pstmt.setString(1,"0000"+ usertobr.getId());//识别号
		 pstmt.setString(2, usertobr.getUname());//姓名
		 pstmt.setString(3, usertobr.getGender());//性别
		 pstmt.setString(4,usertobr.getAge());//年龄
		 pstmt.setString(5, usertobr.getPredate());//生日
		 pstmt.setString(6, usertobr.getId_card());//身份证
		 pstmt.setString(7, usertobr.getIsmarriage());//婚姻，待传
		 pstmt.setString(8, usertobr.getPhone());
		 pstmt.setString(9, null);
		 pstmt.setString(10, "2");//支付方式
		 pstmt.setInt(11, usertobr.getId());//套餐id
		 pstmt.setString(12, "");
		 pstmt.setInt(13, 1);
		 pstmt.setInt(14, 0);
		 pstmt.registerOutParameter(15, Types.INTEGER);
		 pstmt.registerOutParameter(16, Types.VARCHAR);
		  pstmt.executeUpdate();
		  
		  
		  
		 
		
	}

	@Override
	public void inserIntoPpByProcess(UserInfo u) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
