package com.bjbr.servlet;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bjbr.bean.User;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class UserOrderServlet extends HttpServlet {
	
	UserService service = new UserServiceImpl();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		
//	    User u =(User) req.getSession().getAttribute("user");
	    User u = (User) req.getSession().getAttribute("u2");
	    int id =(int) req.getSession().getAttribute("FirstID");
	    String firname=(String) req.getSession().getAttribute("firname");
//	    System.out.println(id+firname);
	    //这是预约日期
		String datestr = req.getParameter("datetime");
		//这是当前订单号的信息根据几天的日期来统计
		//需要根据日期来生成订单流水号 ,先查询数据库当日信息，根据数量 生成流水号
				Date recordDate  = new Date();
		       String recStr = sdf.format(recordDate);
		
		
		
		String isreport = req.getParameter("ischeck");
		
		if(isreport==null){
			u.setIsOnlineReport(0);
		}
		else{
			u.setIsOnlineReport(1);
		}
		
		
		
		
		System.out.println(isreport);
		
		try {
//			java.sql.Date date = java.sql.Date.valueOf(datestr);
//			Date date = sdf.parse(datestr);
			long datetime = System.currentTimeMillis();
			String orderNumer = service.getDateOrderNumer(datetime);
			
			
		//订单号	
		u.setOrdernumber(orderNumer);	
      	 //默认未审批
      	u.setIscheck(0);
      	//设置预约日期
      	u.setDate(datestr);
      	//设置套餐名
        u.setSuit(firname);
        //设置日期
        u.setRecordTime(recStr);
        //体检项目ID
        u.setSuit_id(id);
        
        
        
        
			service.commitOrder(u);
			service.commitToManager(u);
			int rows = service.addPeisPatient(u);
			
			
			
			
			
//			System.out.println("插入"+rows+"行");
//			System.out.println(u);
//			HttpSession session = req.getSession();
//			session.setAttribute("ordernumber", orderNumer);
			
			req.getSession().setAttribute("caonima", orderNumer);
			resp.sendRedirect(req.getContextPath()+ "/aipay.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
}
