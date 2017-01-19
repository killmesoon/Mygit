<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<title>套餐详情</title>

<link href="./css/item.css" rel="stylesheet">
<script type="text/javascript" src="./js/jquery-3.1.1.js"></script>

</head>
<body >
  <!-- 
  
clear: both;
 border-bottom : 1px solid #ddd;
 height: 90px;
 cursor: pointer;
   -->
  
  
  <!-- foreach 获取数据库值 -->
  <c:forEach items="${ItemDetailist }" var="items" varStatus="status">
    <div  class="item" style="clear: both; height: 90px;cursor: pointer;border-bottom : 1px solid #ddd;">
    
    	<div style="float: left;">
    		<p>${items.itemName }</p>
    		
    		
    	</div>

    	<div style="float: right;margin-top: 25px; color: red">
    		${items.suitPrice }
    		<!--  
    		<p><a href="/itemdetail?${items.ID_ExamSuite }">查看详情</a></p>
    -->
    		
    		
    		
    	</div>

    </div>
 
    	
</c:forEach>
 
	  
   
  

</body>
</html>