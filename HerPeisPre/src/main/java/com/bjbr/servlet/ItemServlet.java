package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.bjbr.bean.Items;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

import net.sf.json.JSONArray;

@SuppressWarnings("serial")
public class ItemServlet extends HttpServlet  {
	UserDao dao = new UserDaoImpl();
	
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		 try {
			 req.setCharacterEncoding("utf-8");
			 resp.setContentType("text/html;charset=utf-8");
				List<Items> list = dao.queryItems();
//				for(int i =0;i<list.size();i++){
//					System.out.println(list.get(i).getIprice());
//				}
//				HttpSession session = req.getSession();
//				session.setAttribute("list", list);
				
//				req.setAttribute("list", list);
				JSONArray json = JSONArray.fromObject(list);
				System.out.println(json.get(0).hashCode());
				resp.getWriter().print(json);
//				req.getRequestDispatcher(req.getContextPath()+"/service.jsp").forward(req, resp);
//				resp.sendRedirect(req.getContextPath()+"/service.jsp");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html;charset=utf-8");
		this.doPost(req, resp);
	}
}
