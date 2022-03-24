<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	//Declaration
	//jsp파일에서 사용할 멤버변수, 메서드를 선언할 때 사용.
	public int total;

	public int randomNumber() {
		//랜덤 정수 1~10까지를 발생시켜서 리턴해주세요.
		Random r = new Random();

		return r.nextInt(10)+1;
	}
	
	
	public String randomColor() {
		/*
		  0.0이상 1.0미만의 실수 난수를 발생시켜서
		  난수값이 0.66이상이면 "빨강"을, 0.33이상이면 "노랑",
		  그 이외에는 "파랑"을 리턴하게 하세요.
		*/
		double d = Math.random();
		String color ="";
		if(d>=0.66){
			color = "빨강";
		}else if(d>=0.33){
			color = "노랑";
		}else{
			color = "파랑";
		}
		return color;
	}
%>
<%
	//Scriptlet
	//지역변수 및 메서드 내부의 코드를 작성하는 태그
	//페이지 요청이 발생할 때마다 실행할 로직을 작성
	int each = 0;
	total++;
	each++;
	
	int rn = randomNumber();
	String rc = randomColor();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>오늘의 운세!</h2>

	<!-- p태크는 문단을 나눌 때 사용하는 태그입니다. -->
	<p>
		페이지 누적 요청수: <%= total %>
		페이지 개별 요청수: <%= each %><br/>
	</p>
	<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
	<p>
		행운의 숫자: <strong><%= rn %></strong><br/>
		행운의 색깔: <em><%= rc %></em>
	</p>


</body>
</html>