<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET, POST 방식의 요청</title>
</head>
<body>
	<h1>POST 방식의 요청</h1>
	<button onclick = "sendRequest()">POST 방식으로 요청 보내기 !</button>
	<p id="text"></p>
</body>
<script>
	function sendRequest(){
		var xhr = new XMLHttpRequest();
		
		xhr.open("POST", "request_ajax.jsp", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("city=Seoul&zipcode=53532");
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200)
				document.getElementById("text").innerHTML = xhr.responseText;
		}
	}
</script>
</html>