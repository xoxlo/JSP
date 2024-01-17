<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form>
		아이디 <input type="text" name="id" id="id" oninput="checkId()">
		<p id="check_id"></p>
		비밀번호 <input type="password" name="pw" id="pw" oninput="checkPw()" onkeyup="enterkey()">
		<p id="check_pw"></p>
		<input type="button" onclick="location='join_success.jsp'" value="회원가입" id="join" disabled="disabled">
	</form>
</body>
<script type="text/javascript">
	function checkId(){
		let id = document.getElementById("id").value;
		let p = document.getElementById("check_id");
		
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "checkId.jsp", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("id=" + id);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				var result = xhr.responseText.trim();
				console.log(result);
				if(xhr.responseText.trim() == '성공'){
					p.innerHTML = "사용 가능한 아이디 입니다";
				}else if(xhr.responseText.trim() == '공백'){
					p.innerHTML = "아이디를 입력하세요";
				}else{
					p.innerHTML = "중복된 아이디 입니다";
				}
			}
		}
	}
	
	function checkPw(){
			let pw = document.getElementById("pw").value;
			let p = document.getElementById("check_pw");
			let b = document.getElementById("join");
			let pId = document.getElementById("check_id").innerHTML;
			
			p.innerHTML = " ";
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "checkPw.jsp", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("pw=" + pw);
			
			xhr.onreadystatechange = function(){
				if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
					var result = xhr.responseText.trim();
					console.log(result);
					console.log(pId);
					if(xhr.responseText.trim() == '성공' && pId == "사용 가능한 아이디 입니다"){
						b.disabled = false;
					}else if(xhr.responseText.trim() == '공백'){
						b.disabled = true;
						p.innerHTML = "비밀번호를 입력하세요";
					}
				}
			}
		}
	function enterkey() {
		let b = document.getElementById("join");
		if (window.event.keyCode == 13 && b.disabled != true ) {
			location.href="join_success.jsp";
	    }
	}
</script>
</html>