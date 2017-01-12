<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<title>支付方式</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/header-nav.css">
<link rel="stylesheet" type="text/css" href="css/aipay.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>

</head>
<body>
<%
   if(session.getAttribute("user")==null){
    request.getRequestDispatcher("login.jsp").forward(request,response);
   }
   %>
   


   
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
    		<li><a href="login.jsp">我的订单</a></li>
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
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
				<p style="font-family: '微软雅黑';color: #3b7ab8; ">联系我们:</p>
				<h4>400-0660-065</h4>
			</div>			
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//header-->
	<!--header-bottom-->
	<div class="header-bottom">
		<div class="container">
			<!--top-nav-->
			<div class="top-nav cl-effect-5">
				<span class="menu-icon"><img src="images/menu-icon.png" alt=""/></span>		
				<ul class="nav1" style="color: #ffffff;">
					<li><a href="index.jsp" ><span data-hover="首页">首页</span></a></li>
					<li><a href="about.jsp" > <span data-hover="体检预约">体检预约</span></a></li>
					<li><a href="service.jsp"> <span data-hover="体检套餐">体检套餐</span></a></li>
					<li><a href="news.jsp"> <span data-hover="体检报告">体检报告</span></a></li>
					<li><a href="contact.jsp"> <span data-hover="联系我们">联系我们</span></a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
				   $( "span.menu-icon" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>
			<!--//top-nav-->
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" style="margin:0 0;" placeholder="搜索">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>

   <!-- 信息头 -->
   <div class="content">
   	  <span style="font-family: '微软雅黑'; font-size: 23px;line-height: 115px;border-bottom: 2px solid #3b7ab8;width: auto; ">选择支付方式</span>
   
   </div>

   <div class="container" style="width: 60%;height: 460px;background-color: #fff;font-family: '微软雅黑'; ">
   	  <h3 class="ha" style="font-size: 25px;">
   	  	<img src="images/icon-ok.png">
   	  	订单已提交成功，请尽快完成付款！<br>
   	  	订单号:<a href="#" ><%=session.getAttribute("caonima")%></a>
   	  	<p style="color: #99999c;font-size: 15px;margin-top:15px;">请于2小时之内支付,逾期未支付,系统将自动取消订单!</p>
   	  </h3>
   
      <div id="line">
      	
      </div>


      <h2 >
      	请选择支付方式:
      </h2>
    <div class="payment" >
      <label><input type="radio" name="pay" ><span><img src="images/aipay1.png"></span></label>
      <label ><input type="radio" name="pay"><span><img src="images/wepay.png"></span></label>
      <label ><input type="radio" name="pay"><span><img src="images/visa.png"></span></label>

</div>
    


   </div>

   <div class="container" style="width: 60%;height: 40px;font-family: '微软雅黑';margin-top: 30px; ">

    <span style="float:right;font-size: 15px;"> 实付金额: <span style="font-size: 25px;color: #ff9405;font-weight: bold;">￥<%=session.getAttribute("totalprice") %></span>  </span> 	

   </div>

   <div class="container" style="width: 60%;font-family: '微软雅黑';margin-top: 5px; height: 40px;">
   	 <button type="button" id="paybutton" class="btn btn-lagre btn-warning" style="float: right;width:15%;height: 100%;">立即付款</button>
   </div>
  <script type="text/javascript">
  $('#paybutton').click(function(){
	 alert("此功能暂未开放,请前往前台进行缴费");
	  
  });
  
  </script>
   

	<!--//about-->
	<!--map-->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d24195.46256216959!2d-74.0042145!3d40.7084875!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1434980604138"></iframe>
		<div class="container">	
			<div class="map-info">
			<ul>
					<li>BJBR</li>
					<li>宋庄路 71号院2005</li>
					<li>北京,CN</li>
					<li>010-87627470</li>
				</ul>
			</div>
		</div>
	</div>
	<!--//map-->
	<!--footer-->
	
	<!--//footer-->
		<div class="footer-bottom" style="height: 110px; background-color: #f3f3f3;font-family: '微软雅黑'; ">
		<div class="container">
			<p style="line-height: 20px;color: black;"><br />
网上体检预约已经成为用户最方便快捷的一种预约方式
  <br />Copyright 2016  北京标软</p>
		</div>
	</div>
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"> </script>
</body>
</html>