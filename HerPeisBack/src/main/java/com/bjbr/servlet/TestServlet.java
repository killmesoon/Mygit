package com.bjbr.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;



@SuppressWarnings("serial")
public class TestServlet extends HttpServlet {
     UserDao dao = new UserDaoImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	       try {
			List<UserInfo> list = dao.showUserInfo();
//			for(int i=0;i<list.size();i++){
//				System.out.println(list.get(i).getUsername());
//			}
			HttpSession session = req.getSession();
			session.setAttribute("list", list);
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
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
