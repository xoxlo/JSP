<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag2</title>
</head>
<body>
	<%! // 메소드 선언은 선언부에서 ! <%!
		int count = 3;
		String makeItBeLower(String data){
			return data.toLowerCase();
		}
	%>
	<%
		for(int i = 0; i < count; i++){
			out.println("Java Server Pages" + ( i + 1) + ".<br>");
		}
	%>
	<%=makeItBeLower("Hello World!") %>
</body>
</html>