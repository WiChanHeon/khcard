/*영문만 입력받기*/
function fn_eng(obj){
	val=obj.value;
	re=/[^a-zA-Z]/gi;
	obj.value=val.replace(re,"");
}
/*숫자만  입력받기*/
function fn_number(obj){
	val=obj.value;
	re=/[^0-9]/gi;
	obj.value=val.replace(re,"");
}
/* 한글만 입력받기*/
function fn_han()
{
if((event.keyCode < 12592) || (event.keyCode > 12687))
event.returnValue = false
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
//개인정보 전체체크
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
//개인정보 유효성
function frmchk() 
{
var chk = document.apagree;
var checked_items = 0;
for (i=0;i<chk.elements.length;i++) //특정 영역을 체크 할때는 숫자로 대신 한다 예: for(i=3;i<21;i++)
{
if ((chk.elements[i].name == "answer") &&
(chk.elements[i].checked))
checked_items++;
}
if (checked_items < 2) 
{
alert("개인정보와 고유식별정보의 수집 동의는 필수 동의 사항입니다.")
document.getElementById('allagree').focus();
return false;
}
return true;
}
$(document).ready(function(){
	
	$('.nokey').keyup(function(){
		alert('주소 버튼을 눌러주세요.');
		$('.nokey').val('');
	});
	
});
//주민번호 체크 apply_register.submit
function check_jumin() { 
	var jumin=document.getElementById('ap_rrnfront').value+document.getElementById('ap_rrnrear').value;

 //주민등록 번호 13자리를 검사한다.
	var fmt = /^\d{6}[1234]\d{6}$/;  //포멧 설정
	if (!fmt.test(jumin)) {
		return false;
	}

  // 생년월일 검사
  var birthYear = (jumin.charAt(6) <= "2") ? "19" : "20";
  birthYear += jumin.substr(0, 2);
  var birthMonth = jumin.substr(2, 2) - 1;
  var birthDate = jumin.substr(4, 2);
  var birth = new Date(birthYear, birthMonth, birthDate);

  if ( birth.getYear() % 100 != jumin.substr(0, 2) ||
       birth.getMonth() != birthMonth ||
       birth.getDate() != birthDate) {
     return false;
  }

  // Check Sum 코드의 유효성 검사
  var buf = new Array(13);
  for (var i = 0; i < 13; i++) buf[i] = parseInt(jumin.charAt(i));
 
  multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];
  for (var sum = 0, i = 0; i < 12; i++) sum += (buf[i] *= multipliers[i]);

  if ((11 - (sum % 11)) % 10 != buf[12]) {
     return false;
  }
  return true;
}

function checks(){
	if(check_jumin()){//올바른 값이 들어왔을 때 실행될 코드
			alert("주민번호 인증완료.");
			checkRrnDuplicated = 1
	}else{//올바른 값이 들어오지 않았을 때 실행될 코드
			alert("주민번호 인증실패.");
			checkRrnDuplicated = 2
	}
	$('#apply_register').submit(function(){
		if(check_jumin() == null){
			alert('주민번호 체크 필수!');
			if($('#ap_rrnfront').val()==''){
				$('#id').focus();
			}else{
				$('#ap_rrnfront').focus();
			}
			return false;
		}
	});
}




//앞의 텍스트박스에 6자리 글씨가 써지면 자동으로 다음 칸으로 커서가 넘어간다.
function nextgo(e){  
  if (e.value.length>=6) {
   document.getElementById('ap_rrnrear').focus();
  }
}
//뒤의 텍스트박스에 7자리 글씨가 써지면 자동으로 검사 버튼으로 커서가 넘어간다.
function end(e){  
	  if (e.value.length>=7) {
	   document.getElementById('endRrn').focus();
	  }
	}
//동의서보기
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
//간편신청
$(function(){
	$("mySimpleBtn").click(function(){
		$("#mySimpleModal").modal();
	});
});
