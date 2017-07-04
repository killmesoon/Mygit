package com.bjbr.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbr.bean.ItemPass;
import com.bjbr.bean.UserInfo;
import com.bjbr.dao.UserDao;
import com.bjbr.dao.impl.UserDaoImpl;

@SuppressWarnings("serial")
public class AjaxServlet extends HttpServlet {
	
	UserDao dao = new UserDaoImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String [] values =  req.getParameterValues("data");
		 
		List<ItemPass> list = new ArrayList<ItemPass>();
		
		
		  // 获取到了对应表的id  
		   
//		   for (int i = 0; i < intvalues.length; i++) {
//				System.out.println(intvalues[i]+"------");
//			}
		   
		   
		   //根据id获取到ispass的值
		   
		   
		
		
        int[] intValues = StringToInt(values);
      
        
		try {
			ItemPass item = null;
//			int changeRows = dao.changeUserPass(intValues);
			for (int i = 0; i < intValues.length; i++) {
			item=new ItemPass();
//				System.out.println(intValues[i]);
				item.setItemispass(dao.queryIspass(intValues[i]));
				item.setItemId(intValues[i]);
				list.add(item);
			}
			dao.changeIspass(list);
			
			//在这里dao调用存储过程
			//先检索出所有审核过的用户
			//通过单条审批，索引到单条对象，写入存储过程
			UserInfo usertobr = dao.findUserByIspass(list);
//			System.out.println(usertobr);
			//方法2 调用存储过程 
			
			
			dao.callProcess(usertobr);
//			dao.insertIntoPP(usertobr);
//			dao.inserIntoPpByProcess(usertobr);
			
		
//			dao.callPre
			 
			
			
			
			
			
			
			resp.getWriter().println(list);
			
			
			
			
			
		} catch (Exception e) {
        
		e.printStackTrace();
		}
		
	
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	
	//String 数组转 Int数组
	public int[] StringToInt(String[] arrs){
	    int[] ints = new int[arrs.length];
	    for(int i=0;i<arrs.length;i++){
	        ints[i] = Integer.parseInt(arrs[i]);
	    }
	    return ints;
	}
	
}
