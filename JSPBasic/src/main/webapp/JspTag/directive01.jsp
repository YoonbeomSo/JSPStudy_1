<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 외부 패키지 import 방법 --%>
<%@ page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>


<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String dayInfo = sdf.format(date);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
오늘은 <%= dayInfo %> 입니다.
</p>

</body>
</html>