<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<title>联系我们</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/header-nav.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smoth-scrolling-->
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
				<a href="index.html"><img src="images/logo2.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
				<p style="font-family:'微软雅黑';color: #3b7ab8; ">联系方式:</p>
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
				<ul class="nav1">
					<li><a href="index.jsp" ><span data-hover="首页">首页</span></a></li>
					<li><a href="about.jsp"> <span data-hover="体检预约">体检预约</span></a></li>
					<li><a href="service.jsp"> <span data-hover="体检套餐">体检套餐</span></a></li>
					<li><a href="news.jsp"> <span data-hover="联系我们">体检报告</span></a></li>
					<li><a href="contact.jsp" class="active"> <span data-hover="联系我们">联系我们</span></a></li>
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
					<input type="text" class="form-control" placeholder="Search">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	<!--contact-->
	<div class="contact">
		<div class="container" style="font-family:'微软雅黑';color: #3b7ab8; ">
			<h3 style="font-family:'微软雅黑';color: #3b7ab8;">联系我们</h3>
			<div class="contact-form">
				<form>
					<input type="text" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}" required="">
					<div class="col-md-6 cnt-inpt">
						<input type="email" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}" required="">
					</div>
					<div class="col-md-6 cnt-inpt">
						<input type="text" value="电话" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话';}" required="">
					</div>
					<div class="clearfix"> </div>
					<textarea onfocus="this.value = '' ;" onblur="if (this.value == '') {this.value = '说点什么...';}" required=""> 说点什么... </textarea>
					<input class="btn btn-primary" type="submit" value="提交">
				</form>
			</div>
		</div>
	</div>
	<!--//contact-->
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
<div class="footer-bottom" style="height: 110px; background-color: #ededed;font-family: '微软雅黑'; ">
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