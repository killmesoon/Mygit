package com.bjbr.Utils;


import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderUtils {
	
//	
//	public static String getMaxId(){  
//		String llt = "";
//		Connection conn = null;
//		ResultSet rs = null;
//		PreparedStatement pstmt = null;
//		String query = "";
//        SimpleDateFormat format= new SimpleDateFormat("yyyyMMdd");  
//        String date=format.format(new Date());   
//        String lastNo=date+"001";  
//        try {
//			conn = JDBCUtil.getConnect();
//			query  = "SELECT MAX(FILEID) AS FILEID ";
//			query += "FROM dbo.MST_SCMFILE_INFORMATION";
//			pstmt = conn.prepareStatement(query);		
//			rs = pstmt.executeQuery();
//			if(rs.next())
//			{
//			llt = rs.getString("FILEID").trim();//svo.getLastLoginTime();
//			
//			}
//			  /** 
//	         * 此处可以从数据库中查询然后进行比较，如果为空默认为lastno如果部位空 
//	         * 如果不为空那么
//	         * 讲取出的流水号作为temp，然后截取，累加返回。 
//	         */ 
//	        //int a = Integer.parseInt(llt);
//	        //int b = Integer.parseInt(lastNo);
//			String a = llt.substring(0, 8);
//			String b = lastNo.substring(0, 8);
//			int c = Integer.parseInt(a);
//	        int d = Integer.parseInt(b);
//			if(llt == null)
//			{
//			  return lastNo; 
//			}
//			else if(c<d)
//			{
//			 return lastNo; 
//			}
//			else
//			{
//			  StringBuffer sb=new StringBuffer();  
//		        String temp=llt.substring(llt.length()-3, llt.length());  //获取数据库中当天的最大的ID号并截取（lastNo替换为fileid）
//		      
//		        if(Integer.parseInt(temp)>=1&&Integer.parseInt(temp)<999){  
//		            temp=String.valueOf(Integer.parseInt(temp)+1);  
//		        }  
//		        switch (temp.length()) {  
//		        case 1:  
//		            temp="00"+temp;  
//		            break;  
//		        case 2:  
//		            temp="0"+temp;  
//		            break;  
//		        default:  
//		            break;  
//		        }  
//		        lastNo=date+temp;  
//		        return lastNo;      
//				
//			}
//		} catch(Exception e) {
//			e.printStackTrace();
//		} finally {
//			 if ( rs != null ) try{rs.close();}catch(SQLException e){e.printStackTrace();} 
//		     if ( pstmt != null ) try{pstmt.close();}catch(SQLException e){e.printStackTrace();}
//		     if ( conn != null ) try{conn.close();}catch(SQLException e){e.printStackTrace();}
//		}	
//		return lastNo;
//     }  
	
	 private static final String SERIAL_NUMBER = "XXXX"; // 流水号格式
	    private static OrderUtils OrderUtils = null;
	    private OrderUtils() {
	    }
	    /**
	     * 取得PrimaryGenerater的单例实现
	     *
	     * @return
	     */
	    public static OrderUtils getInstance() {
	        if (OrderUtils == null) {
	            synchronized (OrderUtils.class) {
	                if (OrderUtils == null) {
	                	OrderUtils = new OrderUtils();
	                }
	            }
	        }
	        return OrderUtils;
	    }
	    /**
	     * 生成下一个编号
	     */
	    public synchronized String generaterNextNumber(String sno) {
	        String id = null;
	        Date date = new Date();
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
	        if (sno == null) {
	            id ="wz"+formatter.format(date) + "0001";
	        } else {
	            int count = SERIAL_NUMBER.length();
	            StringBuilder sb = new StringBuilder();
	            for (int i = 0; i < count; i++) {
	                sb.append("0");
	            }
	            DecimalFormat df = new DecimalFormat("0000");
	            id = "wz"+formatter.format(date)
	                    + df.format(1 + Integer.parseInt(sno.substring(10, 14)));
	        }
	        return id;
	    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
