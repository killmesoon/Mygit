package com.bjbr.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.ItemDetail;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

import net.sf.json.JSONArray;


@SuppressWarnings("serial")
public class DetailInfoServlet extends HttpServlet {
	UserDao dao = new UserDaoImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setCharacterEncoding("utf-8");
		String id = req.getParameter("sid");
		int sid = Integer.parseInt(id);
//	 System.out.println(sid);
		//通过指定id获取 对应的关联表 此ID对应 字段      [ID_ExamSuite]
//		resp.getWriter().println(sid);
	          try {
				List<ItemDetail> list = dao.queryItemsDetail(sid);
//				for(int i=0;i<list.size();i++){
//					System.out.println(list.get(i).getExamid());
//					
//					
//				}
				if(list.size()>0){
					//通过这个list的值 找到对应的项目
					//字段ID_ExamFeeItem
					List<ItemDetail> newList = dao.queryItemFeeName(list);
//					for(int i=0;i<newList.size();i++){
//						System.out.println(list.get(i).getExamname()+"价格:"+list.get(i).getPrice());
//					}
					
					JSONArray json = JSONArray.fromObject(newList);
					resp.getWriter().print(json);
				
					
					
					
					
					
					
					
					
					
				}else{
					return;
				}
				
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 
		
		
		
		
		
		
//		System.out.println(req.getParameter("sid"));
		
		
		
		
		
		
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

}
