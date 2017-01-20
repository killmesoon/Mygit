<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<title>预约</title>

<link href="css/item.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>

</head>
<body >
  <h1>asdasdasdasdsadasdasdas</h1>
  
  <!-- foreach 获取数据库值 -->
  <c:forEach items="${list }" var="items" varStatus="status">
    <div id="item_${items.ID_ExamSuite }" class="item">
    
    	<div style="float: left;">
    		<p>${items.examSuite_Name }</p>
    		<c:choose>
    		<c:when test="${items.sex }">
    		<img src="./ima/male.png">
    		</c:when>
    		<c:otherwise>
    		<img src="./ima/female.png">
    		</c:otherwise>
    		
    		</c:choose>
    		
    	</div>

    	<div style="float: right;margin-top: 25px; color: red">
    		${items.price }
    		<!--  
    		<p><a href="/itemdetail?${items.ID_ExamSuite }">查看详情</a></p>
    -->
    		
    		
    		
    	</div>

    </div>
 
    	   <script type="text/javascript">
    		 
      $("#item_${items.ID_ExamSuite }").click(function(){
    	  
    	 window.location.href="/HerPeisWeb/itemdetail/${items.ID_ExamSuite}"; 
    	  
      });
   
    </script>
</c:forEach>
 
	  
   
  

</body>
</html>