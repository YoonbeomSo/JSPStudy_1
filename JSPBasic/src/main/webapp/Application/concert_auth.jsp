<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	UUID uuid = UUID.randomUUID(); //인증번호를 랜덤으로 만드는 API(util package)
	System.out.println(uuid.toString());
	
	//원하는 부분 잘라쓰기
	String[] uuids = uuid.toString().split("-");
	System.out.println(Arrays.toString(uuids));
	System.out.println(uuids[1]);
	
	session.setAttribute("auth_code", uuids[1]);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 인증페이지</h2>
	<h1>인증문자: <del><%= uuids[1] %></del></h1> <!--del은 문자에 줄 그어줌-->
	<form action="concert_auth_check.jsp">
		<small>위의 인증문자를 입력해주세요!</small>
		<input type="text" name="code" size="5">
		<input type="submit" value="확인">
	</form>

</body>
</html>




