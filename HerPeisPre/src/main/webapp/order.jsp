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
<link rel="stylesheet" type="text/css" href="css/service.css">
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
					<li><a href="service.jsp" > <span data-hover="体检套餐">体检套餐</span></a></li>
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
					<input type="text" class="form-control" placeholder="查询">
					<button type="submit" class="btn btn-default"></button>
				</div>
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	<!--体检套餐的模块-->
 







    <!-- 套餐的选择条目 -->

       <div class="containerr" style="width: 70%;height: auto;margin-top: 1%; ">
       <ul class="order_tab_list_sub"   >
        <li  id="user_order" style="float:left"><a href="#">我的订单</a></li>
        <li id="user_desc" style="float:left;margin-left: 10%;"><a href="#">个人资料</a></li>
        <li id="user_safe" style="float:left;margin-left: 10%;"><a href="#">修改密码</a></li>

    </ul>
       <c:forEach items="${orderlist }"  var="olist" varStatus="status">
        <div class="col-item" >
        
                 <div style="padding: 2px;border: 1px solid black;width: auto;float: left">

              <img style="" src="images/demon.png">

                    </div>


                    <div   style="float: left;height: 100%;width: 40%;font-family: '微软雅黑';padding-left: 25px;margin-top: 10px; ">
                      <h3 class="col-two-a"><a href="#">${olist.suit }</a></h3>
                     <p class="col-three-a"><span style="color: #999999;">体检中心:</span><a href="#">北京标软体检中心</a></p>
                     <p class="col-three-a"><span style="color: #999999;">订单号:</span><a href="#">${olist.ordernumber }</a></p>
                     <p><span style="color: #999999;">预约时间:</span>${olist.date }</p>
                    </div>




                   
                    <div style="float: right;height: 100%;width: 10%;margin-right: 3%;text-align: center;font-family:'微软雅黑'; ">
                    <!--  
                    <button id="b1" class="btn btn-primary" style="margin-top: 40%;" >查看详情</button>
                      -->
                      <c:choose>
                      <c:when test="${olist.ischeck==0 }">
                      <h3 style="line-height: 120px;color:red;">未审核</h3>
                      </c:when> 
                      
                      <c:otherwise>
                      <h3 style="line-height: 120px;color:green;">已审核</h3>
                      </c:otherwise>
                      
                       </c:choose>
                       
                    </div>

                     <div style="float: right;height: 100%;width: 15%;border-left: 1px dashed #ddd;border-right: 1px dashed #ddd;margin-right: 1%;text-align:center">
                            <p style="line-height: 110px;"><span style="font-family: '微软雅黑';font-size: 30px;font-weight: bold;color:#ff9405; ">￥${olist.suit_price }</span></p>

                    </div>

        </div>
</c:forEach>
               <div class="updatepwd">
               <div><span style="color: orange;">*</span><span style="font-size: 20px">当前密码:&nbsp&nbsp</span> <input id="old_pwd" type="password" name="oldpwd" /></div> 
               <div> <span style="color: orange;">*</span><span style="font-size: 20px">修改密码:&nbsp&nbsp&nbsp</span><input id="new_pwd" type="password" name="newpwd" /></div>
                <div><span style="color: orange;">*</span><span style="font-size: 20px">确认密码:&nbsp&nbsp&nbsp</span><input id="con_pwd" type="password" name="confirmpwd" /></div>
               
               <div> <button id="b_updatepwd" class="btn btn-primary ">确认更改</button></div>
               </div>
               
                <div class="userinfo">
                  
                  <div>用户名:${sessionScope.user.userid  }</div>
                  <div >姓名:<span id="d_name"></span></div>
                  <div >出生日期:<span id="d_date"></span></div>
                  <div >性别:<span id="d_gender"></span></div>
                  <div >手机号:${sessionScope.user.userid  }</div>
                  <div >身份证:<span id="d_uid"></span></div>
                  <div >所在城市:<span id="d_city"></span></div>
                  <div >婚姻状况:<span id="d_marriage"></span></div>
                  <div >职业:<span id="d_job"></span></div>
                  <div >地址:<span id="d_address"></span></div>
                 <div> <button id="b_updateinfo" class="btn btn-primary">修改个人资料</button></div>
                  
                
                </div>
                
                <div class="formchange">
                
                <form class="userform" action="userinfochange" method="post">
                <div  >用户名:${sessionScope.user.userid  }</div>
                <div  >姓名:&nbsp&nbsp&nbsp&nbsp&nbsp<input id="i_name" type="text" name="username" /></div>
                <div>男&nbsp&nbsp&nbsp<input   id="i_man" type="radio" name="isex" value="男" />&nbsp&nbsp&nbsp&nbsp&nbsp女&nbsp&nbsp&nbsp<input id="i_woman" type="radio" name="isex" value="女" /></div>
                <div >身份证:&nbsp&nbsp<input id="i_uid" type="text" name="idcard" /></div>
                <div >出生日期:<input id="i_date" type="date" name="birthday" /></div>
                <div>手机号:&nbsp&nbsp<input readonly="readonly" style="background-color: #eee" value="${sessionScope.user.userid  }" /></div>
                <div >城市:&nbsp&nbsp&nbsp&nbsp<input id="i_city" type="text" name="city" /></div>
                <div >婚姻状况:<select name="ismarriage">
                <option value="已婚" >已婚</option>
     				<option value="未婚" selected="selected">未婚</option>
                </select></div>
                <div >职业:&nbsp&nbsp&nbsp&nbsp<input id="i_job" type="text" name="job" placeholder="无" /></div>
                <div >地址:&nbsp&nbsp&nbsp&nbsp<input id="i_address" type="text" name="address" /></div>
                
                  <div><button type="submit" class="btn btn-primary">保存个人资料</button></div>
                
                </form>
                
                </div>
                
               
             


       </div>
 
             <script type="text/javascript">
             
             
              //显示订单的div
             $('#user_order').click(function(){
            	 $('.col-item').show();
            	 $('.updatepwd').hide();
            	 $('.userinfo').hide();
            	 $('.formchange').hide();
            	 
             });
             
             
             
             
             //这是显示修改密码的div
             $('#user_safe').click(function(){
            	 
            	 $('.col-item').hide();
            	 $('.updatepwd').show();
            	 $('.userinfo').hide();
            	 $('.formchange').hide();
            	
            	 
            	 
            	 //获取后台用户信息的ajax
            	 /*
            	 $.ajax({    
            	        type:'post',        
            	        url:'updatepassword',    
            	        data:"1111",    
            	            
            	       // dataType:'json',    
            	        success:function(data){    
            	        	
            	        	alert('success');
            	        }    
            	    });
            	 */ 
            	 
             });
             
             
             
             
               //修改密码功能实现
                $('#b_updatepwd').click(function(){
                	//alert($('#con_pwd').val());
                	 $.ajax({    
             	        type:'post',        
             	        url:'updatepwd',    
             	        data:{"old_pwd":$('#old_pwd').val(),"new_pwd":$('#new_pwd').val(),"con_pwd":$('#con_pwd').val()},    
             	            
             	       // dataType:'json',    
             	        success:function(data){    
             	        	
             	        		
             	        		location.href="/HerPeisPre/myorder";
             	        		alert(data);
             	        	
             	        		
             	        	
             	        	
             	        	
             	        	
             	        }    
             	    });
                	
                	
                	
                	
                });
               
               
               //显示用户资料的div
               $('#user_desc').click(function(){
            	   $.ajax({    
           	        type:'post',        
           	        url:'showupdatedinfo',    
           	        data:"1111",    
           	            
           	       // dataType:'json',    
           	        success:function(data){    
           	        	
           	        	var json = eval("("+data+")");
           	        $('#d_name').html(json.name);
           	        $('#d_date').html(json.date);
           	        $('#d_job').html(json.job);
           	        $('#d_city').html(json.city);
           	        $('#d_address').html(json.address);
           	        $('#d_uid').html(json.uid);
           	        $('#d_marriage').html(json.marriage);
           	        $('#d_gender').html(json.gender);
           	        	
           	        	
           	        	
           	        	
           	        }    
           	    });
            	   
            	   
            	   $('.userinfo').show();
            	   $('.col-item').hide();
              	 $('.updatepwd').hide();
              	$('.formchange').hide();
              	
              	//让更新的资料显示在div中
              	
              	
              	
              	
              	 
              	 //修改资料按钮功能实现
              	 $('#b_updateinfo').click(function(){
              		//修改资料的form出现 ,然后隐藏掉原来的信息的div
              		$('.userinfo').hide();
              		$('.formchange').show();
              		
              	  $.ajax({    
             	        type:'post',        
             	        url:'showupdatedinfo',    
             	        data:"1111",    
             	            
             	       // dataType:'json',    
             	        success:function(data){    
             	        //这个是重点，取出返回为json的实体对象 从而获取属性值
             	        	var json = eval("("+data+")");
             	        $('#i_name').val(json.name);
             	        $('#i_date').val(json.date);
             	        $('#i_job').val(json.job);
             	        $('#i_city').val(json.city);
             	        $('#i_address').val(json.address);
             	        $('#i_uid').val(json.uid);
             	        
            
             	        
             	        if(json.gender == "女"){
             	        	$('#i_woman').attr("checked","checked");
             	        }else{
             	        	$('#i_man').attr("checked","checked");
             	        }
             	        	
             	        	
             	        	
             	        }    
             	    });
              		
             
              		 
              	 });             	              	 
               });   
               
               
               
             
             </script>


           



 




 <!--体检报告-->

 <!--体检综述-->





 
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


	<div class="footer-bottom" style="height: 110px;width:100%;  background-color: #ededed;font-family: '微软雅黑'; ">
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