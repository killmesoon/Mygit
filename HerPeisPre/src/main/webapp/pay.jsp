<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<title>订单详情</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/header-nav.css">
<link rel="stylesheet" type="text/css" href="css/pay.css">
<link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript" src="js/datetime.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script type="text/javascript">
	
	$.datetimepicker.setLocale('ch');
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
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="images/logo2.png" alt="logo"/></a>					
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
    <form method="post" action="userorder">
   <!-- 信息头 -->
   <div class="content">
   	  <span style="font-family: '微软雅黑'; font-size: 23px;line-height: 115px;border-bottom: 2px solid #3b7ab8;width: auto; ">提交订单</span>
   
   </div>

   <p  style="font-family: '微软雅黑';font-size: 18px;margin-left: 20%; ">已选择套餐</p>


   <div class="container" style="width: 60%;height: auto;background-color: #fff;padding: 10px;border:1px solid #ddd;">
     <%
   String sex=  (String) session.getAttribute("usersex");
     
if(sex.equals("男")){
 %>
 
     <img src="images/a.png" style="float: left;"> 
<%
}else{ 
%>
  <img src="images/mydemo.png" style="float: left;"> 
<%} %>
     <div class="demo">
     	<h3><%=session.getAttribute("firname") %></h3>
     	<div><span style="color: #999">适宜人群: </span><span><%=sex %></span></div>
       <div><span style="font-size: 20px;font-weight:bold;  color: orange">￥<%=session.getAttribute("totalprice") %></span></div>
     	<div><span style="color:#3b7ab8;">北京标软体检中心[北京市]</span></div>
     </div>
    
     
    
   </div>

   <p  style="font-family: '微软雅黑';font-size: 18px;margin-top: 40px;margin-left: 20%;">选择预约的体检日期</p>
   <div class="container" style="width: 60%;height: auto;background-color: #fff;padding: 10px;border:1px solid #ddd;margin-top: 15px;">
   	  <div>
   	  	<label style="float: left; margin-top: 20px; font-family: '微软雅黑';font-weight: normal; ">预约体检日期:</label>
   	  	<div style="float: left">
   	  		<input type="text" name="datetime" id="datetimepicker4" >
   	  </div>
   	  	  <button type="button" class="btn btn-large btn-warning"  id="open" style="width: 10%;height: 60%;margin-top: 10px;" >选择日期</button>
   	  	  <button type="button" class="btn btn-large btn-warning"  id="ordertime" style="width: auto;height: 60%;margin-top: 10px;" >查询当日预约量</button>
   	  </div>
   </div>
  
  
  <script type="text/javascript">
  $('#ordertime').click(function(){
	 
	  $.ajax({
	         url: 'orderDate',
	         type: 'POST',
	         
	         dataType:'html',
	         data: {time:$('#datetimepicker4').val()}
	       })
	       .success(function(msg) {
	             
	            	 alert("您预约当天的预约量为"+msg+"个"); 
	             
	    	 
	    	 console.log("success");
	       })
	       .fail(function() {
	         console.log("error");
	       })
	       .always(function() {
	         console.log("complete");
	       });
	  
	  
	  
  });
  
  </script>
  

<p style="font-family: '微软雅黑';font-size: 18px;margin-top: 40px;margin-left: 20%;">支付方式</p>
     <div class="container" style="width: 60%;font-family: '微软雅黑';height: 70px;background-color: #fff ;padding: 15px;margin-top: 15px;">

     	<input  type="radio" name="" checked="checked" style="width: 20px;height: 20px;" ><span style="font-size: 18px;margin-top: 5px; ">在线支付</span>
     </div>

<p style="font-family: '微软雅黑';font-size: 18px;margin-top: 40px;margin-left: 20%;">优惠券</p>
 <div class="container" style="width: 60%;font-family: '微软雅黑';height: 70px;background-color: #fff ;padding: 20px;margin-top: 15px;">
 	
 	<select style="width: 20%;">
 	<option></option>
 	<option></option>
 		
 	</select>
 </div>


  <p style="font-family: '微软雅黑';font-size: 18px;margin-top: 40px;margin-left: 20%;">电子报告</p>
     <div class="container" style="width: 60%;font-family: '微软雅黑';height: 70px;background-color: #fff ;padding: 15px;margin-top: 15px;">

     	<input  type="checkbox" name="ischeck" checked="checked" style="width: 20px;height: 20px;" ><span style="font-size: 15px;margin-top: 5px; ">在线领取体检报告<span style="color: #9c9fa8;">(免费)</span></span>
     </div>



     <div class="container" style="width: 60%;font-family: '微软雅黑';height: 120px;background-color: #ddd;border: 1px solid #999999 ;padding: 20px;margin-top: 40px;">
     	 
           <span style="font-size: 20px;color: #999;line-height: 70px;">支付金额:</span><span style="font-size: 20px;color: #ec971f;font-weight: bold;">￥<%=session.getAttribute("totalprice") %></span>
           <div style="width:15%;float: right;height: 60%;margin-top: 10px; ">
           	<button id="btn-go"  type="submit" class="btn btn-large btn-warning" style="width: 100%;height: 100%;">提交订单</button>
           <!--    <script type="text/javascript">
              	$('btn-go').click(function(){
                   window.open("aipay.html", "_self");
              	});
              </script> -->
           </div>



     </div>


  </form>

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