<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<link href="./css/login.css" rel="stylesheet">
<script src="./js/jquery-1.11.1.min.js"></script> 
<title>登录</title>
</head>
<body>
  <div class="header-nav">
   	  		<%
   if(session.getAttribute("user")==null){
    %>
    
    <!-- 条件 -->
    <ul class="one">
    		<li>您好!请 <a  href="${pageContext.request.contextPath}/toLoginJsp">[登录]</a></li>
    		<li class="divider">丨</li>
    		<li class="reg"><a href="${pageContext.request.contextPath}/toRegisterJsp">注册</a></li>
    	</ul>
    	<ul class="two">



    		<li><a href="#">关于我们</a></li>
    		<li><a href="#">医院平台</a></li>
    		<li><a href="#">手机客户端</a></li>
    		<li><a href="#">我的订单</a></li>
    	</ul>
    
    <%  
   }
   else{
   	%>
   	<ul class="one">
    		<li>您好!${sessionScope.user.userid  }</li>
    		<li class="divider">丨</li>
    		<li class="reg"><a href="exist">退出</a></li>
    	</ul>
    	<ul class="two">



    		<li><a href="#">关于我们</a></li>
    		<li><a href="#">医院平台</a></li>
    		<li><a href="#">手机客户端</a></li>
    		<li><a href="myorder">我的订单</a></li>
    	</ul> 
   	<%
   }
   %>

    </div>
    <div class="header-logo">
    	<a href="${pageContext.request.contextPath}/"><img src="images/logo2.png"></a>
    </div>
    <div class="mainbody">
    	<form class="logform" method="post" action="${pageContext.request.contextPath}/userLogin">
    		<p >用户登录</p>
    		<div style="margin-top: 10%; ">
    	    	用户名：<input id="user_id_id" type="text" name="user_id"  style="background-color: #FAFFBD;border: 1px solid #00723A;">
    		</div>
    		<div>
    			密&nbsp&nbsp&nbsp&nbsp码&nbsp: <input id="password_id" style="background-color:#FAFFBD; border: 1px solid #00723A; " type="password" name="password"  >

    		</div>

    		<div>
    			<a  href="">忘记密码?</a>
    		</div>
    		<div>
    			<button id="checkLogin" class="btn btn-primary" type="button"  style="width:33%;margin-left: 7%;"><span style="font-family: '微软雅黑'; font-size: 18px; ">登录</span></button>
    		</div>
    		<script type="text/javascript">
    		$("#checkLogin").click(function(){
    			
    			
    			
    			$.ajax({  
    	            type: "POST",  
    	            url: "${pageContext.request.contextPath}/userLogin",  
    	           // dataType:"json", //必须有  
    	              
    	            data: {user_id:$("#user_id_id").val(),password:$("#password_id").val()},  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",  
    	            success: function (data) {  
    	                
    	            	if(data=="success"){
    	            		//登录成功
    	            		location.href="${pageContext.request.contextPath}/"
    	            	}else{
    	            		alert("用户名密码错误");
    	            		
    	            	}
    	            	
    	            	
    	            }  
    	        });  
    	 
    			
    		});
    		
    		
    		
    		</script>
    		

    	</form>
    		<div class="formright">
    	    <p>您还没有注册过?</p>
    	    <div class="reg1">
    	    <a href="${pageContext.request.contextPath}/toRegisterJsp">立即注册</a>
    	    </div>
    		
    		<img style="width: auto;height: auto;max-height: 100%; max-width: 100%;margin-top: 15%;" src="images/login-ad.jpg">
    	</div>
    	<div class="line"></div>
    		
    	</div>
    	



    
   
    
</body>
</html>