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
public class AjaxServletTwo extends HttpServlet {
	
	UserDao dao = new UserDaoImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String [] values =  req.getParameterValues("datas");
//		
//		
//		
//		
//		  // 获取到了对应表的id  
//		   
//		   for (int i = 0; i < intvalues.length; i++) {
//				System.out.println(intvalues[i]);
//			}
//		   
//		   
//		   //根据id获取到ispass的值
//		   
//		   
//		
//		
//        int[] intValues = StringToInt(values);
//        
//		
//			
//		
////			dao.callPre
//			 
//			
//			
//			
//			
//			
//			
////			resp.getWriter().println(list);
//			
//			
//			
//			
//			
//		} catch (Exception e) {
//        
//		e.printStackTrace();
//		}
//		
//	
//	}
		String [] values =  req.getParameterValues("data");
	
		int[] intvalues = StringToInt(values);
		
		int key=  intvalues[0];
		List<ItemPass> list = new ArrayList<ItemPass>();
		
		try {
			ItemPass item = null;
//			int changeRows = dao.changeUserPass(intValues);
		
			item=new ItemPass();
//				System.out.println(key+"+++");
				item.setItemispass(dao.queryIspass(key));
				item.setItemId(key);
				
			list.add(item);
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
		} catch (Exception e) {
			// TODO: handle exception
		}
			
//		System.out.println("111111111111111111111");
		
	}
		
		
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	
	
	public int[] StringToInt(String[] arrs){
	    int[] ints = new int[arrs.length];
	    for(int i=0;i<arrs.length;i++){
	        ints[i] = Integer.parseInt(arrs[i]);
	    }
	    return ints;
	}
	
}
