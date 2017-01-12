package com.bjbr.dao.impl;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import java.util.List;

import com.bjbr.Utils.JDBCUtil;
import com.bjbr.bean.ItemDetail;
import com.bjbr.bean.Items;

import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;

public class UserDaoImpl implements UserDao {
	
	DecimalFormat  df= new DecimalFormat("#.00"); 
	
	

	@Override
	public User findUser(String userid, String pwd) throws SQLException {
		String sql ="select * from HerLogAndReg where userid=? and password=?";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, userid);
		pst.setString(2, pwd);
		ResultSet rs = pst.executeQuery();
		User u=null;
		
		if(rs.next()){
			//说明验证成功，可以登录;
			u= new User();
			u.setUserid(rs.getString("userid"));//从结果中读出用户名
		}
		JDBCUtil.release(con, pst, rs);
		
		return u;
	}

	@Override
	public User findUserByName(String userid) throws SQLException {
		String sql = "select * from HerLogAndReg where userid=?";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, userid);
		ResultSet rs = pst.executeQuery();
		User u = null;
		if(rs.next()){
			u=new User();
			//已经存在，返回一个不为空的对象
		}
		JDBCUtil.release(con, pst,rs);
		
		
		return u;
	}

	@Override
	public int save(User u) throws SQLException {
		String sql="insert into HerLogAndReg(userid,password)  values(?,?) ";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, u.getUserid());
		pst.setString(2, u.getPassword());
		int rows = pst.executeUpdate();
		 JDBCUtil.release(con, pst);
			return rows;
				
		
	}

	@Override
	public int inserPreInfo(User u) throws SQLException {
		// 根据userID 插入 其他的统计信息
//		String sql ="update HerLogAndReg set name=?,uid=?,marriage=?,gender=?,telephone=?,age=? where userid=?";
//		Connection con = JDBCUtil.getConnect();
//		PreparedStatement pst = con.prepareStatement(sql);
//		pst.setString(1, u.getName());
//		pst.setString(2, u.getUid());
//		pst.setString(3, u.getMarriage());
//		pst.setString(4, u.getGender());
//		pst.setString(5, u.getTelephone());
//		pst.setString(6, u.getAge());
//		pst.setString(7, u.getUserid());
//	
//		int rows = pst.executeUpdate();
//		JDBCUtil.release(con, pst);
		
		return 1;
		
		
		
		
	}

	@Override
	public int inserUserOrder(User u) throws SQLException {
		//更新字段
		
//		String sql = "update HerLogAndReg set date=?,ischeck=? where userid=?";
//		Connection con = JDBCUtil.getConnect();
//		PreparedStatement pst = con.prepareStatement(sql);
//		pst.setString(1,  u.getDate());
//		pst.setInt(2, u.getIscheck());
//		pst.setString(3, u.getUserid());
//		int rows = pst.executeUpdate();
//		JDBCUtil.release(con, pst);
		
		return 1;
	}

	@Override
	public int insertToManager(User u) throws SQLException {
		String sql ="insert into HerPreInfo (username,item,phone,predate,ispass,gender) values(?,?,?,?,?,?)";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, u.getName());
		pst.setString(2, "男入职套餐");
		pst.setString(3, u.getTelephone());
		pst.setString(4, u.getDate());
		pst.setString(5, "1");
		pst.setString(6, u.getGender());
		
		int rows = pst.executeUpdate();
		
		return rows;
	}

	@Override
	public List<Items> queryItems() throws SQLException {
		String sql = "select * from BasExamSuite";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		List<Items> ilist= new ArrayList<Items>();
		while(rs.next()){
			Items i = new Items();
			i.setId(rs.getInt("ID_ExamSuite"));
			i.setIname(rs.getString("ExamSuite_Name"));
			i.setIprice(df.format(rs.getBigDecimal("Price")));
			if(rs.getInt("F_Male")==0){
				i.setIsex("女");
			}else{
				i.setIsex("男");
			}
			
			ilist.add(i);
			
		}
		
		
		JDBCUtil.release(con, pst, rs);
		
		
		
		return ilist;
	}

	@Override
	public List<ItemDetail> queryItemsDetail(int sid) throws SQLException {
		String sql="SELECT ID_ExamFeeItem FROM BasExamSuiteDetail WHERE ID_ExamSuite=?";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, sid);
		ResultSet rs = pst.executeQuery();
		List<ItemDetail> lists = new ArrayList<ItemDetail>();
		while(rs.next()){
			ItemDetail idetails= new ItemDetail();
			idetails.setExamid(rs.getInt("ID_ExamFeeItem"));
			lists.add(idetails);
			
		}
		
		
		
		
		
		return lists;
	}

	@Override
	public List<ItemDetail> queryItemFeeName(List<ItemDetail> list) throws SQLException {
		String sql = "SELECT ExamFeeItem_Name,SuitePrice FROM BasExamFeeItem WHERE ID_ExamFeeItem=?";
//		List<ItemDetail> nlist = new ArrayList<ItemDetail>();
		
		
		Connection con = JDBCUtil.getConnect();
		for(int i =0;i<list.size();i++){
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, list.get(i).getExamid());
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				list.get(i).setExamname(rs.getString("ExamFeeItem_Name"));
				String price = df.format(rs.getBigDecimal("SuitePrice"));
				list.get(i).setPrice(price);
//				list.get(i).setPrice(price);
			}
//			JDBCUtil.release(con, pst, rs);
		}
		
		
		
		
		return list;
	}

	@Override
	public BigDecimal queryTotalPrice(int sid) throws SQLException {
		String sql="SELECT Price FROM BasExamSuite WHERE ID_ExamSuite=?";
		BigDecimal b =null;
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, sid);
		ResultSet rs = pst.executeQuery();
		if(rs.next()){
			b=rs.getBigDecimal("Price");
		}
		
		return b;
	}

	@Override
	public String queryItemName(int sid) throws SQLException {
		String sql="SELECT ExamSuite_Name FROM BasExamSuite WHERE ID_ExamSuite=?";
		String name =null;
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, sid);
		ResultSet rs = pst.executeQuery();
		if(rs.next()){
			name=rs.getString("ExamSuite_Name");
		}
		
		return name;
		
		
		
		
	}
   /**
    * 向PP表中插入字段
    */
	@Override
	public int inserIntoPeisPatient(User u) throws SQLException {
		String sql ="update PeisPatient set DateOrderTime=?,PatientName=?,Sex=?,Age=?,Marriage=?,Phone=?,ExamSuite_Name=? where ID_Patient=?";
		Connection con = JDBCUtil.getConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, u.getDate());
		pst.setString(2, u.getName());
		pst.setString(3, u.getGender());
		pst.setString(4, u.getAge());
		pst.setString(5, u.getMarriage());
		pst.setString(6, u.getTelephone());
		pst.setString(7, u.getSuit());
		pst.setInt(8,1);
		int rows = pst.executeUpdate();
		
		return rows;
	}

@Override
public int addPeisPatient(User u) throws SQLException {
	
	String sql="insert into PeisPatientRelation (ordertime,username,Sex,age,ismarriage,telephone,item,ischeck,idcard,userid,isOnlineReport,ordernumber,recordtime,item_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, u.getDate());
	pst.setString(2, u.getName());
	pst.setString(3, u.getGender());
	pst.setString(4, u.getAge());
	pst.setString(5, u.getMarriage());
	pst.setString(6, u.getTelephone());
	pst.setString(7, u.getSuit());
	pst.setInt(8, u.getIscheck());
	pst.setString(9, u.getUid());
	pst.setString(10, u.getUserid());
	pst.setInt(11, u.getIsOnlineReport());
	pst.setString(12, u.getOrdernumber());
	pst.setString(13, u.getRecordTime());
	pst.setInt(14, u.getSuit_id());
	
	int rows = pst.executeUpdate();
	return rows;
}

@Override
public int addOrderNumber(String orderId) throws SQLException {
	
	String sql ="insert into PeisPatientOrder order_number values(?)";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, orderId);
	int rows = pst.executeUpdate();
	
	
	
	return rows;
}

@Override
public int queryOrderNumber(String orderId) throws SQLException {
	// TODO Auto-generated method stub
	int result=0;
	String sql = "select * from PeisPatientOrder where order_number=? ";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, orderId);
	ResultSet rs = pst.executeQuery();
	if(rs.next()){
		//有结果 已存在
		result=1;
	}
	
	
	return result;
	
}

@Override
public int queryPrecallTime(Long datetime) throws SQLException {
	int count =0;
	//做查询
	String sql="select count(*) from PeisPatientRelation where recordtime=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setDate(1, new Date(datetime));
	ResultSet rs = pst.executeQuery();
	if(rs.next()){
	count = rs.getInt(1);
	}
	//返回日期总数
	
	System.out.println(count);
	return count;
}

@Override
public int queryPrecallTimeByOrder(Long datetime) throws SQLException {

	int count =0;
	//做查询
	String sql="select count(*) from PeisPatientRelation where ordertime=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setDate(1, new Date(datetime));
	ResultSet rs = pst.executeQuery();
	if(rs.next()){
	count = rs.getInt(1);
	}
	//返回日期总数
	
	System.out.println(count);
	return count;
}

@Override
public List<User> findOrderById(User user) throws SQLException  {
	
	String sql="select * from PeisPatientRelation where userid=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, user.getUserid());
	
	ResultSet rs = pst.executeQuery();
	List<User> list = new ArrayList<User>();
	while(rs.next()){
		
		User  u = new User();
		u.setSuit(rs.getString("item"));
		u.setName(rs.getString("username"));
		u.setDate(rs.getString("ordertime"));
		u.setRecordTime(rs.getString("recordtime"));
		u.setOrdernumber(rs.getString("ordernumber"));
		u.setIscheck(rs.getInt("ischeck"));
		u.setGender(rs.getString("Sex"));
		u.setSuit_id(rs.getInt("item_id"));
		list.add(u);
		
		
		
	}
	
	
	JDBCUtil.release(con, pst, rs);
	
	
	
	
	
	
	return list;
}

@Override
public List<User> queryOrderPrice(List<User> list) throws SQLException {
	// 传过来用户列表 ，根据套餐ID查出所有套餐信息
	Connection con = JDBCUtil.getConnect();
	String sql="SELECT Price FROM BasExamSuite WHERE ID_ExamSuite=?";
	ResultSet rs=null;
	PreparedStatement pst = con.prepareStatement(sql);
	for(int i=0;i<list.size();i++)
	{
		pst.setInt(1, list.get(i).getSuit_id());
		 rs = pst.executeQuery();
		
		if(rs.next()){
			list.get(i).setSuit_price(rs.getFloat("Price"));
		}
		
		
		
	}
	List<User> orderlist =list;
	
	JDBCUtil.release(con, pst, rs);
	
	
	return orderlist;
}

@Override
public int changePassword(String userid, String pwd) throws SQLException {
	// 修改密码

	String sql="update HerLogAndReg set password=? where userid=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, pwd);
	pst.setString(2, userid);
	int i = pst.executeUpdate();
	
	
	
	
	JDBCUtil.release(con, pst);
	
	
	return i;
	
}

@Override
public void updateUserInfo(UserInfo uinfo) throws SQLException {
	// 更新用户字段 HerLogAndReg
	String sql="update HerLogAndReg set name=?,uid=?,marriage=?,date=?,address=?,job=?,city=?,gender=? where userid=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, uinfo.getName());
	pst.setString(2, uinfo.getUid());
	pst.setString(3, uinfo.getMarriage());
	pst.setString(4, uinfo.getDate());
	pst.setString(5, uinfo.getAddress());
	pst.setString(6, uinfo.getJob());
	pst.setString(7, uinfo.getCity());
	pst.setString(8, uinfo.getGender());
	pst.setString(9, uinfo.getUserid());
	
	int i = pst.executeUpdate();
	
	System.out.println("更新了"+i+"条");
	
	
	
	JDBCUtil.release(con, pst);
	
	
	
	
	
}

@Override
public UserInfo queryUserAllInfo(String userid) throws SQLException {
	
	String sql = "select * from HerLogAndReg where userid=?";
	Connection con = JDBCUtil.getConnect();
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, userid);
	ResultSet rs = pst.executeQuery();
	UserInfo  u = new UserInfo();
	
	if(rs.next())
	{
		u.setAddress(rs.getString("address"));
		u.setCity(rs.getString("city"));
		u.setDate(rs.getString("date"));
		u.setJob(rs.getString("job"));
		u.setMarriage(rs.getString("marriage"));
		u.setName(rs.getString("name"));
		u.setUid(rs.getString("uid"));
		u.setGender(rs.getString("gender"));
		
		
		
	}
	

	JDBCUtil.release(con, pst, rs);
	
	return u;
}


	
	
	
	
	
	
  	
	
	
	
	//[HerPeisXK].[dbo].[BasExamSuiteDetail01]
	

}
