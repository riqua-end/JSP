/**
 * 2023/05/12 by kim
 */
 
 function check() {
	//name 속성을 이용하여 dom을 선택시는 document.name속성값,name속성값 (계층에 따라 사용)
	
	if(document.frm.id.value == ""){ //value는 입력 값 속성
		alert("아이디를 입력해주세요.");
		document.frm.id.focus(); //focus주기
		return false;
	}
	else if (document.frm.age.value == "") {
		alert("나이를 입력해주세요.");
		document.frm.age.focus();
		return false;
	}
	else if (isNaN(document.frm.age.value)) {
		alert("숫자로 입력해주세요.");
		document.frm.age.focus();
		return false;
	}
	else {
		return true;
	}
}