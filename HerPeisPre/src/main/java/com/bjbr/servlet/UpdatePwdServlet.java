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
public class UpdatePwdServlet  extends HttpServlet{
	
	UserService service = new UserServiceImpl();

	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  req.setCharacterEncoding("utf-8");
		  resp.setCharacterEncoding("utf-8");
		User u=  (User) req.getSession().getAttribute("user");
		  
		  String old_pwd = req.getParameter("old_pwd");
		  String new_pwd = req.getParameter("new_pwd");
		  String con_pwd = req.getParameter("con_pwd");
		  try {
			User user = service.confirmUser(u.getUserid(),old_pwd );
			
			if(user!=null){
				//说明用户存在
				if(new_pwd.equals(con_pwd)){
					//说明两次输入一样
					int i = service.updatePwd(u.getUserid(), con_pwd);
					if(i>0){
						resp.getWriter().println("修改成功");
					}else{
						resp.getWriter().println("修改失败");
					}
					
				}else{
					resp.getWriter().println("两次密码请输入一致");
				}
				
				
			}else{
				resp.getWriter().println("原密码输入错误");
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		  
		  
		  
		  //System.out.println(old_pwd+":"+new_pwd+":"+con_pwd);
		  
		  
	}
  
	   
	  @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}

