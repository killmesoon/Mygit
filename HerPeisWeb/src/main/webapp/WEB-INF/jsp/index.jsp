<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">

<title>首页</title>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="./css/bootstrap.css">



<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="./js/bootstrap.min.js"></script>

<script type="text/javascript" src="./js/pic-head.js"></script>
<script type="text/javascript" src="./js/func.js"></script>

<link rel="stylesheet" type="text/css" href="./css/pic-head.css">
<link rel="stylesheet" type="text/css" href="./css/icon.css">


</head>
<body  style="background-color: #eee" >


<!--头部轮播图-自适应 -->
    <div id="myCarousel" class="carousel slide" style="margin-top: 0">
 <ol class="carousel-indicators">
 <li data-target="#myCarousel" data-slide-to="0"
 class="active"></li>
 <li data-target="#myCarousel" data-slide-to="1"></li>
 <li data-target="#myCarousel" data-slide-to="2"></li>
 </ol>
 <div class="carousel-inner">
 <div class="item active"  >
  <a href="#"><img src="./ima/1920900-1.jpg" alt="第一张" ></a>
 </div>
 <div class="item" >
  <a href="#"><img src="./ima/1920900-2.jpg" alt="第二张"></a>
 </div>
 <div class="item" >
  <a href="#"><img src="./ima/1920900-3.jpg" alt="第三张"></a>
 </div>
 </div>
 
</div>

  <div class="container"  style="background-color: #fff;width:100%" >
   	<div class="top">
   		<div id="tj-helper" style="height:300px;padding-top:60px;"><img src="./ima/loudspeaker1.png">
           <p style="font-size:30px">操作指南</p>
   		</div>


         <div id="tj-pres" style="height:300px;padding-top:60px;"><img src="./ima/phone1.png">
             <p style="font-size:30px">体检预约</p>
         </div>
   	</div>
     

     <div class="bottom">
     	  <div id="tj-report" style="height:300px;padding-top:60px;"><img src="./ima/pencil1.png">
             <p style="font-size:30px">体检报告</p>
   		  </div>
          <div id="tj-login" style="height:300px;padding-top:60px;"><img src="./ima/schedule1.png">
             <p style="font-size:30px">登录注册</p>
          </div>

         <div id="tj-question" style="height:300px;padding-top:60px;"><img src="./ima/notebook1.png">	
             <p style="font-size:30px">健康评估</p>
         </div>

     </div>
       
    

       
     
   </div>
   <!-- 
   这是介绍内容部分
  -->
   <div class="container" style="background-color: #fff;margin-top: 10px;width:100%;">
   <div style="text-align: center;"><h1 style="font-size:38px;">公司简介</h1></div>
   <p style="font-size:30px;">&nbsp&nbsp北京标软信息技术有限公司是长期专注于环保领域。本公司倡导“专业、务实、高效、创新”的企业精神，具有良好的内部机制。优良的工作环境以及良好的激励机制，吸引了一批高素质、高水平、高效率的人才。拥有完善的技术研发力量和成熟的售后服务团队。北京标软是专业体检软件供应商，我们专注打造高智能体检管理软件。标软经过十余年的发展，具备成熟的体检软件开发技术、强大的开发团队、丰富的实施经验以及全方位的解决方案，为您提供专业、全面的技术服务。</p>
   	    
  
   </div>



  <!--分割线 -->
   <div class="container"  style="text-align: center;margin-top: 40px;width:100%;" >
   	
     <img  src="./ima/line2.jpg" style="width: 100%">

   </div>
   

<!-- Logo和名称 -->
   <div class="container" style="margin-top: 5px;text-align: center; font-family: '微软雅黑';background-color: #fff;width:100%;">
   	
    <img src="./ima/logo2.png" >

       <p ><h4 >北京标软体检中心</h4></p>
        <p style="color: #3b7ab8">知名软件公司</p>
   </div>
   
   
   <script type="text/javascript">

   $('#tj-pres').click(function(){
  	  
  	  location.href="itemlist";
   });
   
   </script>

</body>
</html>