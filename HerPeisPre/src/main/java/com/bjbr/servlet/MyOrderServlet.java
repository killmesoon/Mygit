package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.User;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class MyOrderServlet extends HttpServlet {
	UserService service = new UserServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		List<User> list = null;
//		System.out.println(user);
		
		//可以拿到唯一用户名,然后查询ppr表
		try {
		 list = service.findOrderByUserId(user);
			
			for(User u:list){
				System.out.println(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//将订单列表存在数据域中转发到相应页面
		req.getSession().setAttribute("orderlist", list);
		resp.sendRedirect(req.getContextPath()+"/order.jsp");
		
		
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

}
