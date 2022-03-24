<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
fieldset {
	width: 50%;
}
</style>

</head>
<body>
<%@ include file="../Application/app_basic.jsp" %>
<% 
	if(session.getAttribute("user_id") != null){
		String nick = (String)session.getAttribute("user_nick");
%>
		<p><%=nick %>님이 현재 로그인중입니다.</p>
		<a href="session_welcome.jsp">메인페이지로</a>
<% } else{ %>
	
<form action="session_login_ok.jsp" method="post">
	<fieldset> <!-- 폼을 감싸는 테두리 -->
		<legend>로그인 폼</legend> <!-- 폼 이름 설정 -->
	<input type="text" name="id" size="10" placeholder="ID"/><br/>
	<input type="password" name="pw" size="10" placeholder="PW"/><br/>
	<input type="text" name="nick" size="10" placeholder="별명"/><br/>
	<input type="submit" value="로그인" />
	</fieldset>
</form>
<% } %>
<hr/><h3>방문자 수: <%=count %></h3>
</body>
</html>