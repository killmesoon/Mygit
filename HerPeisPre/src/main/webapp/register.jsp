<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<link href="css/login.css" rel="stylesheet">
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<title>注册</title>
</head>
<body>
 <div class="header-nav">
   	  		<%
   if(session.getAttribute("user")==null){
    %>
    
    <!-- 条件 -->
    <ul class="one">
    		<li>您好!请 <a style="" href="login.jsp">[登录]</a></li>
    		<li class="divider">丨</li>
    		<li class="reg"><a href="register.jsp">注册</a></li>
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
    	<a href="index.jsp"><img src="images/logo2.png"></a>
    </div>
    <div class="mainbody">
    	<form class="logform" id="lform" action="regservlet" method="post" >
    		<p >用户注册</p>
    		<div style="margin-top: 10%; ">
    	    	<span style="color: red">*&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>手机号：<input type="text" name="username" placeholder="将作为登录账号" id="username">
                <span ></span>
    		</div>
    		<div>
    		    <span style="color: red">*&nbsp</span>手机验证码: <input type="text" name="phonecode" placeholder="验证码"><span></span> 
                <input type="button" class="btn btn-primary" name="" value="获取验证码"  id="btnSendCode" style="width:100px" onclick="settime(this)">
               <script type="text/javascript"> 
var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
  
</script>
  

    		</div>



    		<div>
    			<span style="color: red">*&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>密码：<input id="password" type="password" name="password" placeholder="密码">
                <span ></span>
    		</div>
            <div>
               <span style="color: red">*&nbsp&nbsp</span>确认密码：<input id="confirm-password" type="password" name="repass" placeholder="确认密码">
               <span></span>
            </div>   
            <div class="xieyi">
                <input type="checkbox" name="" id="checkbr"  style="height: 15px;width: 15px;margin-left: 10%;">我已阅读并同意 <a id="xieyi"  style="display: block;margin-top: -5.5%;" href="#">《北京标软体检网注册协议》</a>

            </div>

    		<div>
    			<button id="submit1" type="submit" class="btn btn-primary" style="width:33%;margin-left: 11%;"><span style="font-family: '微软雅黑'; font-size: 18px; ">确认注册</span></button>
    		</div>
     

    	</form>

   
   


    		<div class="formright">
    	    <p>已经注册过?</p>
    	    <div class="reg1">
    	    <a href="login.jsp">立即登录</a>
    	    </div>
    		
    		<img style="width: auto;height: auto;max-height: 100%; max-width: 100%;margin-top: 15%;" src="images/login-ad.jpg">
    	</div>
    	<div class="line"></div>
    		
    	</div>
    	



    
   


</body>
</html>