<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(request.getParameter("id").equals("scs1234")){
		out.println("실패");
	}else if(request.getParameter("id").isEmpty()){
		out.println("공백");
	}else{
		out.println("성공");
	}
%>