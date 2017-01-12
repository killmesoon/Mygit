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

@SuppressWarnings("serial")
public class UserFormChangeServlet extends HttpServlet {
	UserService service= new UserServiceImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
	  User u=	(User) req.getSession().getAttribute("user");
		
		String username = req.getParameter("username");
		String idcard = req.getParameter("idcard");
		String birthday = req.getParameter("birthday");
		String city = req.getParameter("city");
		String ismarriage = req.getParameter("ismarriage");
		String job = req.getParameter("job");
		String address = req.getParameter("address"); 
		 String gender = req.getParameter("isex");
		
		System.out.println(username+idcard+birthday+city+ismarriage+job+address);
		UserInfo uinfo = new UserInfo();
		uinfo.setName(username);
		uinfo.setUid(idcard);
		uinfo.setDate(birthday);
		uinfo.setMarriage(ismarriage);
		uinfo.setAddress(address);
		uinfo.setJob(job);
		uinfo.setCity(city);
		uinfo.setUserid(u.getUserid());
		uinfo.setGender(gender);
		
		try {
			service.updateUserInfo(uinfo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	
		
		
		
	    req.getSession().setAttribute("savemessage", "保存资料成功"); 
		
		resp.sendRedirect(req.getContextPath()+"/order.jsp");
		
	}
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
}
