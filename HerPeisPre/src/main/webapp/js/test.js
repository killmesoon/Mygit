$(function(){
function goalert(){
 alert($('#txtName').val());
}
  function JudgeUserName()
{
           $.ajax({
           type:"POST",
           url:"test1.jsp",
           dataType:'json',
           data:{userName:$('#txtName').val()},
           beforeSend:function(XMLHttpRequest)
               {
                   $("#showResult").text("正在查询");
                   //Pause(this,100000);
               },
           success:function(msg)
               {
                   $("#showResult").html(msg);
                   $("#showResult").css("color","red");
               },
          complete:function(XMLHttpRequest,textStatus)
               {
                   //隐藏正在查询图片
               },
         error:function()
              {
                   //错误处理
              }
           });

}














});