  $(function(){


                var ok1=false;
                var ok2=false;
                var ok3=false;
                var ok4=false;



                	

$('input[name="username"]').focus(function(){
                    $(this).next().text('请输入正确手机号').addClass('state3');
                }).blur(function(){
                	/*
                	 * 
                	 * 
                	 */
                	

                    if(isPhoneNo($(this).val())){
                        $('input[name="username"]').next().text('输入成功').removeClass('state1').addClass('state4');
                        ok1=true;
                    }else{
                        $(this).next().text('请输入正确手机号').removeClass('state1').addClass('state3');
                    }
                     
                });

           //验证手机验证码
           $('input[name="phonecode"]').focus(function(){
              $(this).next().text('验证码不能为空').addClass('warning');
           }).blur(function(){
               if($(this).val() !=''){
                 $(this).next().text('输入成功').removeClass('warning').addClass('state4');
                 ok2=true;
               }
           });
 


// 验证密码

   $('input[name="password"]').focus(function(){
                    $(this).next().text('密码应该为6-20位').addClass('state3');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!=''){
                        $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                        ok3=true;
                    }else{
                        $(this).next().text('密码应该为6-20位').removeClass('state1').addClass('state3');
                    }
                     
                });


 //验证确认密码
   $('input[name="repass"]').focus(function(){
                    $(this).next().text('请确认密码输入一致').addClass('state3');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!='' && $(this).val() == $('input[name="password"]').val()){
                        $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                        ok4=true;
                    }else{
                        $(this).next().text('请确认密码输入一致').removeClass('state1').addClass('state3');
                    }
                     
                });  


   //验证条约是否勾选
           
          




      //提交按钮,所有验证通过方可提交
 
                $('#submit1').click(function(){
                    if($("input[type='checkbox']").is(':checked')&& ok1 && ok2 && ok3 && ok4){
                        $('form').submit();
                    }else{
                    	alert("您填写的信息有误");
                        return false;
                    }
                });
                 
          





 //正则手机号

 function isPhoneNo(phone) { 
var pattern = /^1[34578]\d{9}$/; 
return pattern.test(phone); } 
	
 function JudgeUserName()
 {
            $.ajax({
            type:"POST",
            url:"test",
            
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