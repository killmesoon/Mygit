<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<title>预约详情</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/header-nav.css">
<link rel="stylesheet" type="text/css" href="css/preinfo.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/preinfo.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<link rel="stylesheet" type="text/css" href="css/preinfo.css">
<%String id = new String(request.getParameter("itemid").getBytes("iso-8859-1"), "utf-8");   %>
<%String name = new String(request.getParameter("itemname").getBytes("iso-8859-1"), "utf-8");   %>
<%String sex = new String(request.getParameter("itemsex").getBytes("iso-8859-1"), "utf-8");   %>
<%String price = request.getParameter("itemprice");   %>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
		
      var url = location.search; //获取url中"?"符后的字串;
		
		function GetQueryString(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
			   var r = window.location.search.substr(1).match(reg);
			   if (r!=null) return (r[2]);
			   return null;
			}
		
		
		
		 $.ajax({
	         url: 'detailinfo',
	         type: 'POST',
	         
	         
	         data: {sid:GetQueryString("itemid")}
	       })
	       .done(function(data) {
	    
	    	
	    	 console.log("success");
	       })
	       .fail(function() {
	         console.log("error");
	       })
	       .always(function() {
	         console.log("complete");
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
   	  <span style="font-family: '微软雅黑'; font-size: 23px;line-height: 115px;border-bottom: 2px solid #3b7ab8;width: auto; ">预约体检</span>
   
   </div>

   <p class="" style="font-family: '微软雅黑';font-size: 18px; margin-left:20%">已选择套餐</p>


   <div class="container" style="width: 60%;height: auto;background-color: #fff;padding: 10px;border:1px solid #ddd;">
     <!--  <img src="images/demo.png" style="float: left">-->
    <%
if(sex.equals("男")){
 %>
 
     <img src="images/demo.png" style="float: left;"> 
<%
}else{ 
%>
  <img src="images/demo3.png" style="float: left;"> 
<%} %>
    
    
     <div class="demo">
     	<h3><%=name %></h3>
     	<div><span style="color: #999">适宜人群: </span><span><%=sex %></span></div>
     	<div><span style="color: #3b7ab8;">北京标软体检中心[北京市]</span></div>
     </div>
     <div style="float: right;height: 100%;width: auto;padding-top: 3%;">
     	<span style="font-size: 20px;font-weight:bold;  color: orange">￥<%=price %></span>
     </div>
     
   </div>

   <div class="" style="width: 60%;height: auto;font-family:'微软雅黑'; margin-top: 30px;margin-left:20%;">
   	 <h4 style="float: left">核对体检者信息</h4>
   	 <span style="border: 1px solid orange;margin-left: 1%;color: orange;">为保证此次预约的有效性，请务必如实填写体检者的以下基本信息（部分信息与检前自诊的体检建议相关，不可修改）</span>

   </div>

<form method="post" action="preservlet" >
     	<div class="container" style="width: 60%; height: auto; margin-top: 30px; background-color: #fff;border:1px solid #ddd;padding: 20px;">
     		<div class="col-one">
     		
     			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp姓名:<input style="width: 20%;height: 34px; border: 1px solid #3b7ab8;" type="text" name="uname"><span></span>
     			婚姻:<select name="ismarrage" class="form-control" style="width: 10%;height: 35px;">
     				<option value="已婚" >已婚</option>
     				<option value="未婚" selected="selected">未婚</option>
     				
     			</select>
     			&nbsp&nbsp&nbsp&nbsp手机:<input type="text" style="width: 20%;height: 34px; border: 1px solid #3b7ab8" name="phonename">
     			
     			&nbsp&nbsp套餐号:<input readonly="readonly" value="<%=id %>" type="text" style="background-color:#f0f0f0;width: 10%;height: 34px; border: 1px solid #3b7ab8" name="itemid">
     		</div>

          

         <div class="con-one">
         	<span id="checkname" style="margin-left: 7%;"></span> <span id="checkphone" style="float:right"></span>  
         </div>

     		<div class="col-two" >
     			身份证号:<input  style="width: 20%;height: 34px; border: 1px solid #3b7ab8" type="number" name="idname">
     			性别:<select name="isSex" class="form-control" style="width: 10%;height: 35px;">
     				<option value="<%=sex %>性" selected="selected"><%=sex %></option>
     				
     				</select>
     				&nbsp&nbsp&nbsp&nbsp年龄:<input  style="width: 20%;height: 34px; border: 1px solid #3b7ab8" type="number" name="age">
     				&nbsp&nbsp套餐:&nbsp&nbsp<input disabled="disabled"  style="width: 10%;height: 34px; border: 1px solid #3b7ab8" type="text" name="itemname" value="<%=name %>">
     		</div>

     		<div class="con-one">
         	<span id="checkid" style="margin-left: 7%;"></span> <span id="checkage" style="float:right;margin-right: 25%;"></span>  
         </div>
     	</div>

     	<div class="col-btn">
     		<button id="btninfo"  class="btn btn-large btn-warning"   style="width: 100%;height: 100%; ">下一步</button>
            
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