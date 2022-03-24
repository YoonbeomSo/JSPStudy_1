<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% for(int i = 0; i<3; i++) { %>
<h2>이클립스와 톰캣으로 JSP파일 렌더링하기~~</h2>
<p>
 안녕하세요. 오늘은 2021년 입니다. <br/>
 <i>스크립트릿 연습을 하고 있습니다.</i> 
 </p><hr/>
<% } %>


<h2>구구단 2단</h2>
<%
	for(int hang=1; hang<=9; hang++) {
		//out.println메서드는 브라우저에 출력을 실행하는 메서드입니다.
		out.println("2 x " + hang + " = " + (2*hang) + "<br/>");
		
	}
%>


<!-- 반복문과 조건문을 이용하여 구구단 홀수단(3,5,7,9)을 출력해보세요. -->

<%
	for(int i=3; i<10; i+=2) {
		out.print("<h2>구구단" + i + "단</h2><hr/>");
		for(int j=1; j<10; j++) {
			out.println(i+" x "+j+"="+i*j+"<br/>");
		}
	}

%>


</body>
</html>