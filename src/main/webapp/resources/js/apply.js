/* 영문만 입력받기*/
function fn_press_han(obj)
    {
        //좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
        if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39
        || event.keyCode == 46 ) return;
        //obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
    }
/* 숫자만 입력받기 */
function fn_press(event, type) {
    if(type == "numbers") {
        if(event.keyCode < 48 || event.keyCode > 57) return false;
        //onKeyDown일 경우 좌, 우, tab, backspace, delete키 허용 정의 필요
    }
}
//주소 API
function openAddr(){
	daum.postcode.load(function(){
		new daum.Postcode({
			oncomplete: function(data){
				document.getElementsByName("ap_postnum")[0].value = data.zonecode;
					document.getElementsByName("ap_address1")[0].value = data.roadAddress;
			}
		}).open();
	});
}
//개인정보 체크
$( function() {
    $('#allagree').click(function() {
        if( $(this).is(":checked") ) {
            $('#agree').prop("checked",true);
            $('#agree2').prop("checked",true);
        }
        else {
            $('#agree').prop("checked",false);
            $('#agree2').prop("checked",false);
        }
    })
});

$(document).ready(function(){
	
	$('.nokey').keyup(function(){
		alert('적지말고 주소 누르셈');
		$('.nokey').val('');
	});
	
});
//주민번호 체
function isIdNoCorrect(ap_rrnfront, ap_rrnrear) {
    var chk = 0;
    var idFrVal = ap_rrnfront.value;
    var idRrVal = ap_rrnrear.value;
    var yy = idFrVal.substring(0,2);
    var mm = idFrVal.substring(2,4);
    var dd = idFrVal.substring(4,6);
    var sex = idRrVal.substring(0,1);
   
    if (isNaN(idFrVal) || isNaN(idRrVal)) {
        if (isNaN(idFrVal)) {
            ap_rrnfront.value = "";
            ap_rrnfront.focus();
        } else if (isNaN(idRrVal)) {
            ap_rrnrear.value = "";
            ap_rrnrear.focus();
        }
        alert("주민등록번호는 숫자만 가능합니다.");
        return;
    }
 
    if (idFrVal.split(" ").join("") == "") {
        alert("주민등록번호 앞자리를 입력하세요.");
        ap_rrnfront.focus();
        return;
    } else if (idRrVal.split(" ").join("") == "") {
        alert("주민등록번호 뒷자리를 입력하세요.");
        ap_rrnrear.focus();
        return;
    }
      
    if (idFrVal.length != 6) {
        alert("주민등록번호 앞자리는 6자리로 입력하세요.");
        ap_rrnfront.focus();
        return ;
    } else if (idRrVal.length != 7) {
        alert("주민등록번호 뒷자리는 7자리로 입력하세요.");
        ap_rrnrear.focus();
        return;
    }    
      
    if ((idFrVal.length != 6) || (mm < 1 || mm > 12 || dd < 1)) {
        alert ("주민등록번호 앞자리가 올바르지 않습니다.");
        ap_rrnfront.focus();
        return;
    } else if ((sex != 1 && sex != 2 ) || (idRrVal.length != 7 )) {
        alert ("주민등록번호 뒷자리가 올바르지 않습니다.");
        ap_rrnrear.focus();
        return;
    }
   
    for (var i = 0; i <= 5 ; i++) {
        chk = chk + ((i % 8 + 2) * parseInt(idFrVal.substring(i, i+1)));
    }
      
    for (var i = 6; i <=11 ; i++) {
        chk = chk + ((i % 8 + 2) * parseInt(idRrVal.substring(i-6, i-5)));
    }
   
    chk = 11 - (chk % 11);
    chk = chk % 10;
   
    if (chk != idRrVal.substring(6, 7))   
        return false;
      
    return true;
}
 