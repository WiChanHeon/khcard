$(document).ready(function(){
   
   //메뉴 hover 시 배경 dimmed
   $('.dir').hover(function(){
      $('ul:first', this).stop().slideDown('fast');
      $('.dimmed').css('display','block');
   },function(){
	   $('ul:first', this).stop().slideUp('fast');
      $('.dimmed').css('display','none');
   });
   
   
});