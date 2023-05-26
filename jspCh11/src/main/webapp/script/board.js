/**
 *  2023-05-25 by kkj
 */
 
 function boardCheck(){
	if (document.frm.name.value.length == 0) {
		//name속성으로 DOM객체를 선택(frm은 form의 name속성,name은 input에서 name="name"을 선택)
		alert("작성자를 입력하세요.")
		return false; //false면 작업을 안함
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.")
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("제목을 입력하세요.")
		return false;
	}
	return true;
}

function open_win(url,name){
	//팝업창을 띄움
	//url의 페이지를 이 창에다가 띄워줌
	window.open(url,name,"width=500,height=230");
}

function passCheck() {
	if(document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}
