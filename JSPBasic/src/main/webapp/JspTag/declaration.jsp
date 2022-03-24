<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	public int i;
	public String str = "홀길동";
	public int add(int n1, int n2) {
		return n1 + n2;
	}
	
	//Math.random();
%>
<%
	double d = Math.random();
	int result = add(4,7);
	int j = 0; //지역 변수는 반드시 초기화
	i++;
	j++;
	
	out.println("i의 값은: " + i + "<br/>");
	out.println("j의 값은: " + j + "<br/>");
	out.println("result의 값은: " + result + "<br/>");
	out.println("d의 값은: " + d + "<br/>");
	
%>


</body>
</html>