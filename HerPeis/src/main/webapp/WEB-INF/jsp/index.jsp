<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<title>首页</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/login.css">
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
    		<li>您好!请 <a style="" href="${pageContext.request.contextPath}/toLoginJsp">[登录]</a></li>
    		<li class="divider">丨</li>
    		<li class="reg"><a href="${pageContext.request.contextPath}/toRegisterJsp">注册</a></li>
    	</ul>
    	<ul class="two">



    		<li><a href="#">关于我们</a></li>
    		<li><a href="#">医院平台</a></li>
    		<li><a href="#">手机客户端</a></li>
    		<li><a href="${pageContext.request.contextPath}/toLoginJsp">我的订单</a></li>
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

    	<div class="header">
		<div class="container">
			<div style="float: left"><img src="images/logo2.png"></div>
			<div class="header-info">
				<p style="font-family:'微软雅黑';color: #3b7ab8; ">联系方式:</p>
				<h4>400-0660-065</h4>
			</div>			
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--header-->
	
	<!--头部样式-->
	<!--header-bottom-->
	<div class="header-bottom">
		<div class="container">
			<!--top-nav-->
			<div class="top-nav cl-effect-5">
				<span class="menu-icon"><img src="images/menu-icon.png" alt=""/></span>		
				<ul class="nav1">
					<li><a href="index.jsp" class="active"><span data-hover="首页">首页</span></a></li>
					<li><a href="about.jsp"> <span data-hover="体检预约">体检预约</span></a></li>
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
					<input type="text" class="form-control" style="font-family: '微软雅黑'; " placeholder="搜索">
					
					
					<button type="submit" class="btn btn-default "></button>
				</div>
					

			</form>
			
			
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	<!--banner-->
	<div class="banner">
		<div class="container ">
			<!-- banner-text Slider starts Here -->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
				// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
						$("#slider3").responsiveSlides({
						auto: true,
						pager:true,
						nav:false,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
						}
					});	
				});
			</script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner-text">		
							<h1>我们是您的健康专家，守护您的健康</h1>
							<p>We are your health experts, to protect your health.</p>
						</div>
					</li>
					<li>
						<div class="banner-text">		
							<h1>再忙也不要忘了自己的健康</h1>
							<p>Again busy also don't forget to their health.</p>
						</div>
					</li>
					<li>
						<div class="banner-text">		
							<h1>关爱自己，从健康开始</h1>
							<p>  
Take care of yourself, start with health.</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--banner-bottom-->
	<div class="banner-bottom" style="background-color: #f3f3f3">
		<div class="container">
			
			<a href="#gallery" class="arrow scroll"> </a>
		</div>
	</div>


	 <div class="work" style="background-color: #f3f3f3" >		
		<div class="container">	
			<div class="work-title">
				<h3 style="font-family: '微软雅黑';color: #3b7ab8; ">更多帮助</h3>
				<p>More product</p>
			</div>
			<div class="col-md-4 work-grids" >
				<ul>
					<li><img src="images/icon2.png" alt=""></li>
					<li>
						<h4 style="font-family: '微软雅黑';">健康检查</h4>
						<p style="font-family: '微软雅黑';">定期检查身体，有助于保持良好的身体状况，以及及时发现问题，防患于未然</p>
					</li>
				</ul>
			</div>	
			<div class="col-md-4 work-grids">
				<ul>
					<li><img src="images/icon3.png" alt=""></li>
					<li>
						<h4 style="font-family: '微软雅黑';">私人定制</h4>
						<p style="font-family: '微软雅黑';">我们的专家为您推出专属的健康养生方案，使您的身体达到最佳状况</p>
					</li>
				</ul>
			</div>
			<div class="col-md-4 work-grids">
				<ul>
					<li><img src="images/icon4.png" alt=""></li>
					<li>
						<h4 style="font-family: '微软雅黑';">专家咨询</h4>
						<p style="font-family: '微软雅黑';">医院有最权威的专家，24小时在线为您解决健康问题</p>
					</li>
				</ul> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//work-->
    
	<div class="like" style="margin-top: 15px" >		
		<div class="container">
			<div class="work-title">
				<h3 style="font-family: '微软雅黑'; color: #3b7ab8;">请时刻与我们联系</h3>
				<p class="cnnct">Stay connected with us anytime</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/Contact.png" alt=""/>
				</a>
				<p>Phone</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/wechat-48.png" alt=""/>
				</a>
				<p>Wechat</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/mes.png" alt=""/>
				</a>
				<p>Message</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/qgood.png" alt=""/>
				</a>
				<p>QQ</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--map-->
	


	<!--//map-->
	<!--footer-->
	<div class="footer" style="background-color: #f3f3f3;font-family:'微软雅黑'; " >
		<div class="container">
			<div class="footer-grids">				
				<div class="col-md-4 recent-posts">
					<h4 style="font-family: '微软雅黑';color: #3b7ab8; ">最近记录</h4>
					<div class="recent-posts-text">
						<h5>5.30, 2015</h5>
						<p>Duis autem vel eum iriure dolor</p>
					</div>
					<div class="recent-posts-text">
						<h5>3,15, 2015</h5>
						<p>Duis autem vel eum iriure dolor</p>
					</div>
					<div class="recent-posts-text">
						<h5> 2,3, 2016</h5>
						<p>Duis autem vel eum iriure dolor</p>
					</div>
				</div>
				<div class="col-md-4 recent-posts">
					<h4 style="font-family: '微软雅黑';color: #3b7ab8; ">用户评论</h4>
					<div class="recent-posts-text">
						<h5>2天前<span>@张三</span></h5>
						<p>查的项目很详细</p>
					</div>
					<div class="recent-posts-text">
						<h5>3天前 <span>@李四</span></h5>
						<p>医生很有耐心，并告诉我日常应该注意的事项</p>
					</div>
					<div class="recent-posts-text">
						<h5>1天前 <span>@王五</span> </h5>
						<p>医生很专业，就是人有点多</p>
					</div>
				</div>
				<div class="col-md-4 recent-posts">
					<h4 style="font-family: '微软雅黑';color: #3b7ab8; ">地址</h4>
					<p class="adrs">北京市丰台区宋庄路71号院2号楼2005室 </p>
					<ul>
						<li><span></span>河南省第三人民医院,陇海路</li>
						<li><span class="ph-no"></span>+00 (123) 111 11 11</li>
						<li><span class="mail"></span><a href="mailto:example@mail.com">mail@example.com</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
	</div>	
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