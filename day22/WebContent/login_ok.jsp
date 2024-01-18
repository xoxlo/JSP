<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		Cookie cookieId = new Cookie("id", request.getParameter("id"));
		Cookie cookiePw = new Cookie("pw", request.getParameter("pw"));
		Cookie cookieckId = new Cookie("ck_id", request.getParameter("ck_id"));
		Cookie cookieckPw = new Cookie("ck_pw", request.getParameter("ck_pw"));
		cookieId.setMaxAge(10000);
		cookiePw.setMaxAge(10000);
		cookieckId.setMaxAge(10000);
		cookieckPw.setMaxAge(10000);
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		response.addCookie(cookieckId);
		response.addCookie(cookieckPw);
	%>
	로그인 성공 !
</body>
</html>