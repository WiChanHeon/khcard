$(document).ready(function(){
   
   //메뉴 hover 시 배경 dimmed
   $('.dir').hover(function(){
      $('ul:first', this).slideDown('fast');
      $('.dimmed').css('display','block');
   },function(){
	   $('ul:first', this).slideUp('fast');
      $('.dimmed').css('display','none');
   });
   
   
});