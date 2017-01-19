<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


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
  <tbody id="t_body" >
  
		<c:forEach items="${mylist }" var="list" varStatus="status">
		
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
	 location.href="/HerManger/test";
   }
 }

 

 
 
 
 
 
        
    function fun(){
    	
    	
    	
        obj = document.getElementsByName("check");
        check_val = [];
        for(k in obj){
            if(obj[k].checked)
                check_val.push(obj[k].value);
        }
       
        $.ajax({
            url: 'ajax',
            type: 'POST',
            traditional: true,
            data: {data:check_val}
          })
          .done(function(msg) {
        	  location.href="/HerManger/test";
        	  
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

   <tbody id="t2_body"></tbody> 


     </table>
</body>
</html>