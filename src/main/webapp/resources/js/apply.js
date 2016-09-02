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
//주민번호 체크
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
 if(check_jumin())//올바른 값이 들어왔을 때 실행될 코드
  alert("올바른 주민등록번호입니다.");
 else//올바른 갑이 들어오지 않았을 때 실행될 코드
  alert("올바르지 않은 주민번호입니다.");
}

//앞의 텍스트박스에 6자리 글씨가 써지면 자동으로 다음 칸으로 커서가 넘어간다.
function nextgo(e){  
  if (e.value.length>=6) {
   document.getElementById('ap_rrnrear').focus();
  }
}