package com.bjbr.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

import net.sf.json.JSONArray;



@SuppressWarnings("serial")
public class DateServlet extends HttpServlet {
  UserDao  dao = new UserDaoImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String d1 = req.getParameter("d1");
		String d2 = req.getParameter("d2");
		resp.setCharacterEncoding("utf-8");
		
//		System.out.println(d1+"到"+d2);
		
		try {
			List<UserInfo> list = dao.queryUserByDate(d1,d2);
//			for(UserInfo u:list){
//					
//				System.out.println(u);
//			}
			
			
			JSONArray json = JSONArray.fromObject(list);
			resp.getWriter().print(json);
			
			
			
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
