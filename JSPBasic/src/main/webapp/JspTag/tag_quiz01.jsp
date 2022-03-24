<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%!
	public int randomNumber() {
		Random r = new Random();
		return (r.nextInt(8)+2);
}
	int total;
%>
<%
total++;
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	페이지 누적 요청 수:<%= total %><br/> 
	매 10번째 방문자에게는 기프티콘을 드립니다.
		<%if(total%10==0) { %>
			당첨되셨습니다!!!<br/>
		<%} %>
	</p>
	
	<hr /> 


	<%
	int data = randomNumber();
	out.println("<h2>랜덤 구구단("+ data  +"단)</h2>");
	out.println("이번에 나온 구구단은 " + data + "단입니다.<br/><br/>");
	for(int i = 1; i<10; i++) {
			out.println(data + " x " + i + " = " + data * i+"<br/>");	
	}
	%>

</body>
</html>
