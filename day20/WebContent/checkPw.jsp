<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(!(request.getParameter("pw").isEmpty())){
		out.println("성공");
	}else{
		out.println("공백");
	}
%>