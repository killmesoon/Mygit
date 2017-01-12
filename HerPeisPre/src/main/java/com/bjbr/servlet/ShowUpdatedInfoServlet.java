package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.User;
import com.bjbr.bean.UserInfo;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

@SuppressWarnings("serial")
public class ShowUpdatedInfoServlet extends HttpServlet  {
	
	UserService service = new UserServiceImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//查找更新过的用户信息
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		UserInfo uinfo =null;
	 User u=	(User) req.getSession().getAttribute("user");
	 
	 
	    try {
			 uinfo = service.queryUserAllInfo(u.getUserid());
			
//			System.out.println(uinfo.getName());
			 
			 JSONObject  ujson = JSONObject.fromObject(uinfo);
			 
			 resp.getWriter().println(ujson);
			 
			 
			
			
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


