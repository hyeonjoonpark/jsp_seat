/**
 * 
 */
 
 function checking() {
	if(document.frm.resvno.value.length == 0) {
		alert("resvno가 입력되지 않았습니다");
		frm.resvno.focus();
		return false;
	}
	
	if(document.frm.empno.value.length == 0) {
		alert("empno가 입력되지 않았습니다");
		frm.empno.focus();
		return false;
	}
	
	if(document.frm.resvdate.value.length == 0) {
		alert("resvdate가 입력되지 않았습니다");
		frm.resvdate.focus();
		return false;
	}
	
	if(document.frm.seatno.value.length == 0) {
		alert("seatno가 입력되지 않았습니다");
		frm.seatno.focus();
		return false;
	}
	
	alert("정상적으로 등록되었습니다");
	return true;
}

function reseting() {
	alert("정보를 지우고 다시입력함 ㅅㄱ");
}