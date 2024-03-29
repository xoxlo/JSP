/**
 * 	회원가입 유효성 검사
 */

var form = document.joinForm;

function join(){
	// value를 조건식 안에서 사용하면
	// 값이 있을 때 true, 값이 없을 때 false
	if(!form.id.value){
		alert("아이디를 입력해주세요");
		form.id.focus();
		return;
	}
	if(form.id.value.length < 4 || form.id.value.length > 16){
		alert("아이디는 4자 이상, 16자 이하로 입력해주세요.");
		form.id.focus();
		return;
	}
	if(!form.name.value){
		alert("이름을 입력해주세요.");
		form.name.focus();
		return;
	}
	if(!form.password.value){
		alert("비밀번호를 입력해주세요.");
		form.password.focus();
		return;
	}
	// 8자리 이상, 대문자, 소문자, 숫자, 특수문자 모두 포함되어 있는 지 검사
	let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	let hanglecheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-하]/;
	
	if(!reg.test(form.password.value)){
		alert("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
		form.password.focus();
		return;
	}
	
	// 같은 문자를 4번 사용할 수 없다
	if(/(\w)\1\1\1/.test(form.password.value)){
		alert("같은 문자를 4번 이상 사용하실 수 없습니다.");
		form.passwrod.focus();
		return;		
	}
	
	// 비밀번호 안에 아이디가 있을 때
	if(form.password.value.search(form.id.value) != -1){
		alert("비밀번호에 아이디를 포함할 수 없습니다.");
		form.password.focus();
		return;		
	}
	
	// 비밀번호에 한글이 있으면 안된다
	if(hanglecheck.test(form.password.value)){
		alert("비밀번호에 한글을 사용할 수 없습니다.");
		form.password.focus();
		return;
	}
	
	// 비밀번호에 공백을 포함할 수 없다
	if(form.password.value.search(/\s/) != -1){
		alert("비밀번호에 공백 없이 입력해주세요.");
		form.password.focus();
		return;
	}
	if(form.password.value != form.password_re.value){
		alert("비밀번호를 확인해주세요.");
		form.password_re.focus();
		return;
	}
}














