<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Random r = new Random();
    List<Integer> li = new ArrayList<>();
	while(li.size()<6){
		int data = r.nextInt(45)+1;
		if(li.contains(data)==false){
			li.add(data);
		}
	}
	Collections.sort(li);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<p>
<h2>로또번호 생성 결과</h2>
</p>

<p>
이번주 로또는 이 번호다!!
</p>
	<%
		for (int i : li) {
			out.println(i + "&nbsp;"); //&nbsp; : html에서 space 
			Thread.sleep(700); //CPU를 잠시 멈추는 메서드700msec=0.7sec
			out.flush(); //브라우저의 출력 버퍼를 비우는 메서드	
		}
	%>


</body>
</html>