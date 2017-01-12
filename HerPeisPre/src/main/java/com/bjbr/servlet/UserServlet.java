package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjbr.bean.User;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class UserServlet extends HttpServlet {

	UserService service = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
	      
		
		User u =null;
		try {
			u = service.login(userid, password);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("mess", "服务器忙，请稍后！");
			req.getRequestDispatcher(req.getContextPath()+"/message.jsp").forward(req, resp);
		}
		
		if(u==null){
			//说明用户名或者密码错误,重定向到登录页面
			
			resp.getWriter().write("<script language='javascript'>alert('用户名密码错误！');window.location.href='"+req.getContextPath()+"/login.jsp';</script>");
			return;
			
			
		}
		//登录成功，将用户信息存在session中。
		HttpSession session = req.getSession();
		session.setAttribute("user", u);
		resp.sendRedirect(req.getContextPath()+"/service.jsp");
		
		
		
	}
	
}
