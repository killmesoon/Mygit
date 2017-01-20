<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">	
<link rel="stylesheet" type="text/css" href="css/header-nav.css">	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>


<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="css/detail.css">

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	

<script type="text/javascript">
		
		
		 
		 
		
</script>
 

	      
	      
	      

<title>套餐详情</title>

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
    		<li>您好!</li>
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
			<li><a href="service.jsp" class="active"> <span data-hover="体检套餐">体检套餐</span></a></li>
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





<!--每一个套餐的详情 -->
<div  class="container" style="height: 350px;background-color: #fff;border: 1px solid #ccc;margin-top: 3%;">
<!-- 图片的设置-->
	<div name="img" style="float: left;width: 40%;height: 330px;padding-top: 1%;">
	    
        
      

 
     <img src="images/a.png" style="width: 100%;height: 100%;float: left;"> 

      
     <!-- 
     <img src="images/mydemo.png" style="width: 100%;height: 100%;float: left;"> 
      -->
       

	
		
	</div>

<div class="col-info">
	   <div class="col-info-header">
	   
	 	<h3>${baseSuit.examSuitName}</h3>
	   </div>
	  <p style="font-weight: bold;">￥${baseSuit.price}</p>
	  <div class="pre">
	  	<a id="pre" href="#">我要预约</a>
	  	
	  	<span>特别提醒:请于体检当天携带证件照或身份证复印件</span>
	  </div>

	    <div style="width: 100%;margin-top: 3%;">
	  <dl style="font-family: '微软雅黑'; ">
	  	<dd style=" float: left;color: #999999;" >体检中心:&nbsp&nbsp&nbsp&nbsp</dd>
	  	<dd style="margin-left: 10px;">北京标软体检中心</dd>
	  	<dd style="float: left;color: #999999">适宜人群:<c:if test=" ${baseSuit.sex eq false}"><c:out value="男"></c:out></c:if>
	  	<c:if test=" ${baseSuit.sex eq true}"><c:out value="女"></c:out></c:if>
	  	 </dt>
	  	
	  	<dd style="float: left"> </dd> 
	  	<span style="color: #FFAA38">${baseSuit.examSuitId} </span></br>
	  	<h5  style="color: #FFAA38">  </h5>
	  </dl>
	  </div>
	

</div>
 <!--套餐的总体介绍-->


  


</div>


        <div class="tabss">
      <ul id="tab">
      	<li class="fli" >套餐详情</li>
        <li style="  margin-left: 2%;">预约须知</li>
      	<li style="  margin-left: 2%;">体检须知</li>
      </ul>
     </div>

     <div id="tab_con">

<div class="fdiv">
<p style="font-size: 19px;color: #3b7ab8;float: left;margin-top: 3%;">1.套餐介绍</p>
  <p style="clear: both">暂无介绍</p> 
   
   
   <p style="font-size: 19px;color: #3b7ab8;float: left;margin-top:3%;">2.体检项目</p>
   <table style="clear: both;width: 100%;text-align: left;border: 1px solid #ddd;color: black" class="table table-bordered table-hover ">
   	<thead style="text-align: center;">
   		<th  style="color: black; width: 10%;text-align: center;" >序号</th>
   		<th style="color: black;width: 20%;text-align: center;">体检项目</th>
   		<th style="color: black;width: 65%;text-align: center;">套内价格</th>
      
   	</thead>
   	<tbody id="tttt" >
   			<c:forEach items="${suitlist }" var="list"  varStatus="status">
           		<tr>
           			<td>${status.index }</td>
           			<td>${list.examFeeItem_Name }</td>
           			<td>${list.suitePrice }</td>
           		</tr>

           	</c:forEach>	

   	

   	</tbody>
   </table>

   <p style="font-size: 19px;color: #3b7ab8;float: left;margin-top:2%;">3.赠送项目</p>
<!-- 
   <table style="clear: both;width: 100%;text-align: left;border: 1px solid #ddd;color: black" class="table table-bordered table-hover ">
   <thead style="text-align: center;">
   		<th  style="color: black; width: 10%;text-align: center;" >序号</th>
   		<th style="color: black;width: 20%;text-align: center;">体检项目</th>
   		<th style="color: black;width: 65%;text-align: center;">检查意义</th>

   </thead>
   <tbody>
   	<tr>
   		<td>1</td>
   		<td>结论</td>
   		<td>结论</td>
   	</tr>
   </tbody>
   	
   </table>
   	
   --> 

</div>

<div>

<p style="margin-top: 1%;">1.  本系统是为了方便民众来院体检而设的<span style="color: #3b7ab8">免费</span>服务项目。</p>
<hr style="border : 0.5px solid #fff; " />

<p>2.  为保证预约有效，请您务必认真填写您的预约信息，并<span  style="color: #3b7ab8">核对正确</span>。</p>
<hr style="border : 0.5px solid #fff; " />
<p>3.  预约成功后，请于体检当日上午<span style="color: red;">8:00</span>至<span style="color: red;">11:00</span>间，持有效<span style="color: red;">身份证件</span>到体检中心接待处确认预约信息并打

印体检指引单，老年人参检需由家人陪同。</p>
<hr style="border : 0.5px solid #fff;" />
<p>4.  所预约的体检项目因设备故障、节假日等原因，无法当日完成检查，我们将尽早安排其他时间为您检查。</p>
<hr style="border : 0.5px solid #fff; " />
<p>5.  如因故不能体检，需要修改预约日期或取消体检预约，请提前一天致电<span style="color: #3b7ab8;font-weight: bold;">4008-751-851</span>告知客服人员。</p>
<hr style="border : 0.5px solid #fff; " />
<p>6.  如有以下情况不宜预约体检，请前往专科就诊。</p>
<hr style="border : 0.5px solid #fff; " />

<p>A.出现发热症状</p>

<p>B.患有上呼吸道感染或已确诊的传染性疾病</p>

<p>C.患有严重疾病或行动不便者</p>



</div>

<div>
	<p>1.体检前三天应注意饮食均衡，如需做大便潜血检查需素食饮食，避免吃血制品、动物内脏、菠菜等。 </p>
	<hr style="border : 0.5px solid #fff; " />
	<p>2.体检前一天清淡饮食，勿饮酒、喝浓茶和咖啡,不要吃对肝、肾功能有损害的药物(降压药、降糖药除外)，晚八点后禁食。 </p>
	<hr style="border : 0.5px solid #fff; " />
	<p>3.体检前一天要注意休息，避免过度疲劳、剧烈运动和情绪激动，以免影响体检结果。 </p>
	<hr style="border : 0.5px solid #fff; " />
	<p>4.体检的当日早晨禁食、禁水，在抽血、腹部彩超、身高、体重、血压、人体成分、C13呼气检查完毕后方可进食；如患有糖尿病、冠心病、高血压等慢性疾病，请正常服药（少量水），并告知医生。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>5.体检当日请着宽松轻便服装,不要穿带金属扣的内衣、不要佩戴首饰，以免影响放射检查;请勿携带贵重物品,如携带物品不便保管可寄存到储物柜。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>6.体检时间为周一至周五上午8:00-11:30（节假日除外）,抽血时间最好在上午8点--9点,最迟不宜超过10点，以保证检验结果的准确性。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>7.如需做餐后两小时血糖检查，请先做空腹项目，然后吃二两馒头（须从吃第一口饭计算时间），于餐后2小时抽血。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>8.眼科检查时，请告知医生是否配带隐形眼镜。 </p>
	<hr style="border : 0.5px solid #fff; " />
	<p>9.做心电图和测量血压时请保持安静,避免精神紧张和情绪激动，以免影响结果。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>10.近期准备要小孩的夫妇，避免做胸片、颈椎片、骨密度等放射线检查。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>11.做妇科彩超、前列腺、膀胱彩超需憋尿。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>12.体检当天可提前留置便标本，取蚕豆大小；留取尿标本时最好留晨尿，以留取半杯为宜。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>13.体检过程中有问题请及时与医生联系，不要擅自更改体检项目，也不要遗漏您的任何一项检查；如须增加体检项目，应主动与接诊台联系。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>14.体检时请向医生告知您的不适和曾患疾病，以便注意重点检查、综合分析和评估。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>15.体检过程中如有糖尿病不能耐受低血糖或年老行动不便时，请告知导医，以便优先体检。</p>
	<hr style="border : 0.5px solid #fff; " />
	<p>16.女士注意事项</p>
	<p>a.已怀孕或可能怀孕了的女性，避免进行X线、骨密度、妇科、宫颈涂片及TCT检查。 </p>
	<p>b.月经期间应避免做尿常规、便常规、妇科及经阴妇科彩超检查，应另行预约时间检查。 </p>
	<p>c.未婚妇女不做阴道内诊和宫颈刮片等检查。</p>
	<p>d.受检前日请暂停阴道用药及冲洗，避免性生活。</p>
	<p>e.做妇科彩超需憋尿，做完空腹项目后到餐厅进食早餐并饮水400至600ml以使膀胱充盈。</p>
	<p>f.妇科需在憋尿前或排空膀胱后进行检查。</p>

</div>

</div>


<script type="text/javascript">
var tabs=document.getElementById("tab").getElementsByTagName("li");

var divs=document.getElementById("tab_con").getElementsByTagName("div");

for(var i=0;i<tabs.length;i++){

tabs[i].onclick=function(){change(this);}

}


function change(obj){

for(var i=0;i<tabs.length;i++)

{

if(tabs[i]==obj){

tabs[i].className="fli";

divs[i].className="fdiv";

}

else{

tabs[i].className="";

divs[i].className="";

}

}

}
</script>






<!--体检报告-->

<!--体检综述-->





<div class="blank20"></div>
<div class="Bottom" style=""></div>
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