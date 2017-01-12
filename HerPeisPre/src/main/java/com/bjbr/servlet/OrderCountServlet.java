package com.bjbr.servlet;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class OrderCountServlet extends HttpServlet {
	UserService service = new UserServiceImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str = req.getParameter("time");
		if(str==""){
			return;
		}else{
		Date dDate;
		try {
			dDate = (new SimpleDateFormat("yyyy/MM/dd")).parse(str);
			//yyyy-MM-dd
//			System.out.println(dDate);
			int i = service.getTotalOrderCount(dDate.getTime());
//			String dateOrderNumer = service.getDateOrderNumer(dDate.getTime());
//			System.out.println("有"+i+"个");
			resp.getWriter().print(i+"");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
	}
	
   
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	

}
