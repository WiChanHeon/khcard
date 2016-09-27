//간편신청
w = 640; //팝업창의 너비
h = 510; //팝업창의 높이

LeftPosition=(screen.width-w)/2;
TopPosition=(screen.height-h)/2;

function Simplepopup(f){
	
	window.open('../apply/applysimplewrite.do','간편신청',"width="+w+",height="+h+",top="+TopPosition+",left="+LeftPosition+", scrollbars=no");
	
	f.submit()
	
	window.close()
}