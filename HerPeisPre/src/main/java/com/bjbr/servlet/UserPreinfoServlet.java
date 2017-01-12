package com.bjbr.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjbr.bean.ItemDetail;
import com.bjbr.bean.User;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;
import com.bjbr.service.UserService;
import com.bjbr.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class UserPreinfoServlet extends HttpServlet {
	UserService service = new UserServiceImpl();
	UserDao dao = new UserDaoImpl();
	DecimalFormat  df= new DecimalFormat("#.00");
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		   resp.setContentType("text/html;charset=utf-8");
		   req.setCharacterEncoding("utf-8");
	       User u = (User) req.getSession().getAttribute("user"); 
	       String name = req.getParameter("uname");
	       String marriage = req.getParameter("ismarrage");
	       String telephone = req.getParameter("phonename");
	       String uid = req.getParameter("idname");
	       String gender = req.getParameter("isSex");
	       String age = req.getParameter("age");
	       String id = req.getParameter("itemid");
	       
	       
	       
	       u.setName(name);
	       u.setUid(uid);
	       u.setMarriage(marriage);
	       u.setGender(gender);
	       u.setTelephone(telephone);
	       u.setAge(age);
	    
	       //得到登录时 带着USERID的用户
	      
	      
	      //获取了项目的id
	      
	      int itemid = Integer.parseInt(id);
//	      System.out.println(name+marriage+gender+itemid);
	      List<ItemDetail> newList =null;
	     
	       try {
			int rows = service.commitInfo(u);
//			System.out.println("+++++"+u);
			List<ItemDetail> list = dao.queryItemsDetail(itemid);
			BigDecimal bprice = dao.queryTotalPrice(itemid);
			String firname = dao.queryItemName(itemid);
			String myprice = df.format(bprice);
			if(list.size()>0){
				//通过这个list的值 找到对应的项目
				//字段ID_ExamFeeItem
				 newList = dao.queryItemFeeName(list);
//				for(int i=0;i<newList.size();i++){
//					System.out.println(list.get(i).getExamname()+"价格:"+list.get(i).getPrice());
//				}
				
				
				
			}
			
			
			
			  HttpSession session = req.getSession();
		      session.setAttribute("u2", u);
		      session.setAttribute("newList", newList);
		      session.setAttribute("totalprice", myprice);
		      session.setAttribute("FirstID", itemid);
		      session.setAttribute("firname", firname);
		      session.setAttribute("usersex", gender);
		      
//			System.out.println("影响了"+rows+"行");
			resp.sendRedirect(req.getContextPath()+"/item.jsp");
			
			
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
