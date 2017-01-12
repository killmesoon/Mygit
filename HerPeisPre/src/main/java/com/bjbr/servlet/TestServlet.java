package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class TestServlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	UserService service = new UserServiceImpl();
	
	
	resp.setContentType("text/html;charset=utf-8");
	       System.out.println("访问了");
	      String str = req.getParameter("userName");
	     try {
			boolean isExist = service.isUserExist(str);
			if(isExist){
		    	 
				 resp.getWriter().print("用户名已存在");
			       
			     }else{
			    	
			    	 resp.getWriter().print("还未注册");
			     }
			     
			  System.out.println(str);
		} catch (SQLException e) {
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
