package com.bjbr.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjbr.bean.User;
import com.bjbr.service.UserService;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	UserService service = new UserService();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/html;charset=utf-8");
		   req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String pwd = req.getParameter("password");
		
		try {
			User u = service.login(username, pwd);
			if(u==null){
				//登录失败
				resp.getWriter().write("<script language='javascript'>alert('用户名密码错误！');window.location.href='"+req.getContextPath()+"/login.jsp';</script>");
				return;
			}
			//否则将用户存入session
			u.setAdminuser(username);
			u.setPassword(pwd);
			HttpSession session = req.getSession();
			session.setAttribute("user", u);
			resp.sendRedirect(req.getContextPath()+"/test");
			
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
