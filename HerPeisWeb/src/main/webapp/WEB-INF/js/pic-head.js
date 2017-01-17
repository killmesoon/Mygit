$(function(){

$('#myCarousel').carousel({
 //设置自动播放/2 秒
 interval : 3000,
}); 

$('.carousel-control').css('line-height', $('.carousel-innerimg').height() + 'px');
$(window).resize(function() {
 var $height = $('.carousel-inner img').eq(0).height() || $('.carousel-inner img').eq(1).height() || $('.carousel-inner img').eq(2).height();
 $('.carousel-control').css('line-height', $height + 'px');
}); 




});