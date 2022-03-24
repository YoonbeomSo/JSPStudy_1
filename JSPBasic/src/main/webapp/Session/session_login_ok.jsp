<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id"); //input에서 받아옴
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals("kkk7777") && pw.equals("7777")) {
		//세션에 로그인했다는 증표를 담는다.
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		response.sendRedirect("session_welcome.jsp");
	} else {
%>	

<!-- 
	* html내부에 자바스크립트 코드를 사용하려면 <script>태그를 사용합니다.
	- JS내장함수 alert()은 브라우저에 경고창을 띄웁니다.
	- JS내장객체 history가 제공하는 back()메서드는 뒤로가기 기능을 수행함.
-->
	<script type = "text/javascript"> 
		alert("로그인에 실패했습니다.");
		history.back();
	</script>
		
<% } %>

