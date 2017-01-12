package com.bjbr.servlet;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.User;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class UserRegServlet extends HttpServlet {
	UserService service = new UserServiceImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		String userid = req.getParameter("username");
		String password= req.getParameter("password");
		
		
		User u= new User();
		u.setUserid(userid);
		u.setPassword(password);
		try {
			
			int rows = service.register(u);
			if(rows==2){
				//说明用户已经存在
				
				resp.getWriter().write("<script language='javascript'>alert('用户名已存在,请直接登录');window.location.href='"+req.getContextPath()+"/login.jsp';</script>");
				return;
			}else{
				resp.getWriter().write("<script language='javascript'>alert('注册成功!');window.location.href='"+req.getContextPath()+"/login.jsp';</script>");
			}
			
			
			
			
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
