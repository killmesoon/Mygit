<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/header-nav.css">
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

<style type="text/css">
	.content{
		width: 60%;
		height: 75px;
	    border-bottom: 2px solid #ccc;
	    margin: 10px auto;
	}

	.container table{
      font-family: "微软雅黑";
	}

</style>

<title>项目详情查看</title>

</head>
<jsp:useBean id="ide" class="com.bjbr.bean.ItemDetail" scope="page" />  


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
					<input type="text" class="form-control" placeholder="搜索">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>

   <!-- 信息头 -->
   <div class="content">
   	  <span style="font-family: '微软雅黑'; font-size: 23px;line-height: 115px;border-bottom: 2px solid #3b7ab8;width: auto; ">选择体检项目</span>
   
   </div>
    <div class="container" style="width: 60%;">
   <h4 id="key" style="font-family: '微软雅黑';margin-top: 10px; "><%=session.getAttribute("firname") %></h4>
    
     <table style="clear: both;width: 100%;text-align: left;border: 1px solid #ddd;color: black;margin-top: 20px;" class="table table-bordered  ">
           	<thead style="text-align: center;">
           		<th  style="color: black; width: 10%;text-align: center;" >序号</th>
           		<th style="color: black;width: 20%;text-align: center;">体检项目</th>
           		<th style="color: black;width: 65%;text-align: center;">检查意义</th>

           	</thead>
           	<tbody >
           	
           	<c:forEach items="${newList }" var="list"  varStatus="status">
           		<tr>
           			<td>${status.index }</td>
           			<td>${list.examname }</td>
           			<td>${list.price }</td>
           		</tr>

           	</c:forEach>	
           	</tbody>
           </table>

           <div class="container" style="width:100%;font-family:'微软雅黑';font-size: 16px; ">
           	<span style="float: right">费用小计 : ￥<span style="color: orange;font-weight: bold"><%=session.getAttribute("totalprice") %></span></span>
           </div>

            <h4 style="font-family: '微软雅黑';margin-top: 10px; ">自选项目(0项)</h4>
            <div class="container" style="width: 100%;margin-top: 20px;">
             <button class="btn btn-primary" id="badd">添加项目</button>
             <table style="clear: both;width: 100%;text-align: left;border: 1px solid #ddd;color: black;margin-top: 20px;" class="table table-bordered  ">
           <thead style="text-align: center;">
           		<th  style="color: black; width: 10%;text-align: center;" >序号</th>
           		<th style="color: black;width: 20%;text-align: center;">体检项目</th>
           		<th style="color: black;width: 60%;text-align: center;">检查意义</th>
           		  
           		  <script type="text/javascript">
           //添加项目(暂不可用)
           		$('#badd').click(function(){
           			alert("此功能暂未开放")
           			
           		}); 
           		  
</script>
           		  
  
           </thead>
           <tbody id="tadd">
           
           </tbody>
           	
           </table>
           
           
           
          
           
            	
            </div>
          <div class="container" style="width:100%;font-family:'微软雅黑';font-size: 16px; ">
           	<span style="float: right">费用小计 : ￥<span style="color: orange;font-weight: bold">0.00</span></span>
           </div>
     
  </div>

    <div class="container" style="width: 60%;font-family: '微软雅黑';margin-top: 20px;background-color: #f5f5f5;height: 70px; ">

    	<span style="line-height: 70px;">合计 :</span>
    	<span style="line-height: 70px;font-size: 20px;font-weight: bold;color:orange;">￥<%=session.getAttribute("totalprice") %></span>
    	<button id="btn-go" type="button" class="btn btn-lagre btn-warning" style="float: right;width: 13%;height: 60%; margin-top: 1%;" >下一步</button>
    	<script type="text/javascript">
    		$('#btn-go').click(function(){
             window.open("pay.jsp", "_self");
              
             /*
    			 $.ajax({
    		         url: 'date',
    		         type: 'POST',
    		         
    		         
    		         data: {sid:$('#key').html()}
    		       })
    		       .done(function(data) {
    		    	 //接收传来的json
    		    
    		    	
    		    	
    		    	 console.log("success");
    		       })
    		       .fail(function() {
    		         console.log("error");
    		       })
    		       .always(function() {
    		         console.log("complete");
    		       });
              
    			*/  
              
    		});
    		
    		
    	</script>

    </div>


   
   

   


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