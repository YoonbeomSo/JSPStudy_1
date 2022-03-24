<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
    session.invalidate(); //session 무효화(전체삭제)
	response.sendRedirect("session_login.jsp");
%>