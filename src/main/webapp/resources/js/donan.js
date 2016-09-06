$(document).ready(function() {
    $("#btn1").click(function(){
    	
    	var flag = $('#checkbox').prop('checked'); 
    	
    	
    	  if(flag) {
    	   	$(".jub").toggle();
    	   	$(".jub1").toggle();
    	  }else{
    		alert('카드가 선택되지 않았습니다.\n분실하신 카드를 선택하여 주십시오.');
    	  }
    });
    
    $("#btn2").click(function(){
    	var x = document.forms["myForm"]["loss_reg"].value;
    	var y = document.forms["myForm"]["loss_memo"].value;
    	var z = document.forms["myForm"]["loss_phone"].value;
    	
        if (x == "" || y == "" || z == "") {
            if(x == ""){
            	alert("분실일자를 입력하세요!");
            	myForm.loss_reg.focus();
            }else if(y == ""){
            	alert("분실장소를 입력하세요!");
            	myForm.loss_memo.focus();
            }else{
            	alert("연락처를 입력하세요!");
            	myForm.loss_phone.focus();	
            }
            return false;
        }
    });
    	$(".eyong").click(function(){
	
    		$(".nae").toggle();
    	});
    
});
