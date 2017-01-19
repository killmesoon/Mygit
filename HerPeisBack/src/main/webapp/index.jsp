<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>后台管理</title>
</head>
<body>

<%
   if(session.getAttribute("user")==null){
    request.getRequestDispatcher("login.jsp").forward(request,response);
   }
   %>
  
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part-->


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">您好！admin</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> 我的信息</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i>修改密码</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i>锁定</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span></a>

    </li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch--><!--close-top-serch-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>统计查询</span></a> </li>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>用户管理</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>部门维护</span></a> </li>





  </ul>
</div>
<!--sidebar-menu-->
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>统计查询</a></div>
     
     <div><form id="f1" method="post" action="godate"> <input type="date" id="d1" name="d1"  /> 到<input type="date" id="d2" name="d2" /></form><button type="button" class=""  id="but1" >查询</button> </div>
      
  </div>
  
  <script type="text/javascript">
   $('#but1').click(function(){
	   $('#t_body').hide();
	  $('#f1').submit();
	  
		
	   
   });
  </script>
  
  <script type="text/javascript">
  
     $('#queryByDate').click(function(){
    	
    	 //点击使用ajax实现查询
    	 
    	
    	 $.ajax({
	         url: 'date',
	         type: 'POST',
	         
	        dataType:'json',
	         data: {d1:$('#d1').val(),
	        	 
	         d2:$('#d2').val()
	         }
	       })
	       .done(function(data) {
	    	 //接收传来的json
	        // 
	    	 
	    	  alert(data);
	    	  
	    	  
	    	  
	    	  var item; 
	    	  var k;
	    	  $('#t2_body').empty();
	    	  $.each(data,function(i,result){ 
	    		  k=i+1;
	    		
	    		  
	    	  item = "<tr><td>"+k+"</td><td>"+result.uname+"</td><td>"+result.gender+"</td><td>"+result.item+"</td><td>"+result.phone+"</td><td>"+result.predate+"</td><td >"+result.ischeck+"<input type='checkbox' name='check' style='margin-left:3px;margin-top:-3px;' /><button  class='btn btn-danger' style='float:right;width:110px;' type='button' name='button' onclick='disp_confirm()'>审核</td></tr>"; 
	    	  $('#t2_body').append(item); 
	    	  $('#t_body').empty();
	    	  }); 
	    	  

		    	
	    	 
	    	
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
  
  

   
   <table id="mytable" class="table table-bordered table-striped" style="">
    <thead style="font-weight:bold;">
      <th>
        <td>姓名</td>
        <td>性别</td>
       
        <td>套餐</td>
        <td>联系电话</td>
        <td>预约时间</td>
 
        <td>是否审核</td>
  
      </th>
    </thead>
      <%
if(session.getAttribute("mylist") == null){
 %>
  <tbody id="t_body" >
  
		<c:forEach items="${list }" var="list" varStatus="status">
		
    <tr <c:if test="${status.index%2==1 }">style="background-color: #ffffff"</c:if>>
      <td>${list.id }</td>
      <td>${list.username }</td>
      <td>${list.gender}</td>
      <td>${list.item}</td>
      <td>${list.phone }</td>
      <td>${list.date }</td>   
      <!--                      
      <td style="color:red;" <c:if test="${list.ispass==true }">style="color: green;"</c:if> >已审核
       --> 
      <c:choose> 
  <c:when test="${list.ispass==true }">   
    <td style="color:green">已审核<input type="checkbox" name="check" value=${list.id } disabled="disabled" style="margin-left:3px;margin-top:-3px;"></td>  
  </c:when> 
  
  <c:otherwise>   
    <td style="color:red">未审核<button  class="btn btn-danger " style="float:right;width:110px;" type="button" name="button" onclick="disp_confirm()">审核</button><input type="checkbox" name="check" value=${list.id } style="margin-left:3px;margin-top:-3px;"></td> 
  </c:otherwise> 
</c:choose> 
   
      
    </tr>
    
    
 <script type="text/javascript">
 
 function disp_confirm()
 {
 var r=confirm("确认审核后不可更改，是否审核")
 if (r==true)
     fun();
 else
   {
	 location.href="/HerPeisBack/test";
   }
 }

 

 
 
 
 
 
        
    function fun(){
    	
    	
    	
        obj = document.getElementsByName("check");
        check_val = [];
        for(k in obj){
            if(obj[k].checked)
                check_val.push(obj[k].value);
        }
           
        alert(check_val);
        $.ajax({
            url: 'ajax',
            type: 'POST',
            traditional: true,
            data: {data:check_val}
          })
          .done(function(msg) {
        	  location.href="/HerPeisBack/test";
        	  
            console.log("success");
          })
          .fail(function() {
            console.log("error");
          })
          .always(function() {
            console.log("complete");
          });
        
         
    }
    
</script>



    
</c:forEach>	
  </tbody>
    
<%
}else{ 
%>
  <tbody id="t2_body"  >
   
   	<c:forEach items="${mylist }" var="list" varStatus="status">
		
    <tr <c:if test="${status.index%2==1 }">style="background-color: #ffffff"</c:if>>
      <td>${list.id }</td>
      <td>${list.uname }</td>
      <td>${list.gender}</td>
      <td>${list.item}</td>
      <td>${list.phone }</td>
      <td>${list.date }</td>   
      <!--                      
      <td style="color:red;" <c:if test="${list.ispass==true }">style="color: green;"</c:if> >已审核
       --> 
      <c:choose> 
  <c:when test="${list.ispass==true }">   
    <td style="color:green">已审核<input type="checkbox" name="check" value=${list.id } disabled="disabled" style="margin-left:3px;margin-top:-3px;"></td>  
  </c:when> 
  
  <c:otherwise>   
    <td style="color:red">未审核<button  class="btn btn-danger " style="float:right;width:110px;" type="button" name="button" onclick="disp_confirm()">审核</button><input type="checkbox" name="check" value=${list.id } style="margin-left:3px;margin-top:-3px;"></td> 
  </c:otherwise> 
</c:choose> 
   
      
    </tr>
    
    
 <script type="text/javascript">
 
 function disp_confirm()
 {
 var r=confirm("确认审核后不可更改，是否审核")
 if (r==true)
     fun();
 else
   {
	 location.href="/HerPeisBack/test";
   }
 }

 

 
 
 
 
 
        
    function fun(){
    	
    	
    	
        obj = document.getElementsByName("check");
        check_val = [];
        for(k in obj){
            if(obj[k].checked)
                check_val.push(obj[k].value);
        }
        
        alert(check_val);
       
        $.ajax({
            url: 'ajaxtwo',
            type: 'POST',
            traditional: true,
            data: {data:check_val}
          })
          .done(function(msg) {
        	  location.href="/HerPeisBack/godate";
        	  
            console.log("success");
          })
          .fail(function() {
            console.log("error");
          })
          .always(function() {
            console.log("complete");
          });
        
         
    }
    
</script>
    
</c:forEach>
   
   </tbody> 
           
<%} %>
    
    
 

   

     </table>
     
    




</div>







<div class="row-fluid">
  <div id="footer" class="span12"> 2016 &copy;北京标软信息技术有限公司 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">北京标软</a> </div>
</div>

<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/matrix.js"></script>
<script src="js/matrix.dashboard.js"></script>
<script src="js/jquery.gritter.min.js"></script>
<script src="js/matrix.interface.js"></script>
<script src="js/matrix.chat.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/matrix.form_validation.js"></script>
<script src="js/jquery.wizard.js"></script>
<script src="js/jquery.uniform.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/matrix.popover.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/matrix.tables.js"></script>

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {

          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();
          }
          // else, send page to designated URL
          else {
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>