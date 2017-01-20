$(function(){

	var ok1 =false;
	var ok2 =false;
	var ok3 =false;
	var ok4 =false;




 $('input[name="uname"]').focus(function(){

 $('#checkname').text("请输入中文汉字").addClass("check-color")
 }).blur(function() {
 	
   if (isChinaName($(this).val())) {
        
      $('#checkname').text("验证成功").removeClass('check-color').addClass("pass");    
      ok1=true;
   }


 });



 $('input[name="phonename"]').focus(function() {
 	
    $('#checkphone').text('请输入正确11位手机号').addClass("check-color");

 }).blur(function() {
 	if (isPhoneNo($(this).val())) {
        
      $('#checkphone').text("验证成功").removeClass('check-color').addClass("pass");   
      ok2=true; 
   }
 });


 

  $('input[name="idname"]').focus(function() {
 	
    $('#checkid').text('请输入正确18位身份证').addClass("check-color");

 }).blur(function() {
 	if (isCardNo($(this).val())) {
        
      $('#checkid').text("验证成功").removeClass('check-color').addClass("pass"); 
      ok3=true;   
   }
 });



$('input[name="age"]').focus(function() {
 	
    $('#checkage').text('请输入正确年龄').addClass("check-color");

 }).blur(function() {
 	if (isAge($(this).val())) {
        
      $('#checkage').text("验证成功").removeClass('check-color').addClass("pass");  
      ok4=true;  
   }
 });
 



$('#btninfo').click(function() {
	if(ok1 && ok2  && ok3 && ok4){
          $('form').submit();
          
          
	}else{
		alert("请确认信息正确及完整后提交");
		return false;
	}
});





function isChinaName(name) {
 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
 return pattern.test(name);
}


// 验证身份证 
function isCardNo(card) { 
 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
 return pattern.test(card); 
} 


function isAge(age) {
	var pattern =/^(1[89])|([2-7][0-9])|(80)$/;
	return pattern.test(age);
}

//手机号

 function isPhoneNo(phone) { 
var pattern = /^1[34578]\d{9}$/; 
return pattern.test(phone); } 
});


 

 