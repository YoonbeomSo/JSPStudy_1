<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HttpServletRequest request = new HttpServletRequest();
	StringBuffer reqUrl = request.getRequestURL();
	String reqUri = request.getRequestURI();
	String protocol = request.getProtocol();
	String conPath = request.getContextPath();
	int serverPort = request.getServerPort();
	String userIp = request.getRemoteAddr();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>
	# 요청 URL: <%= reqUrl %> <br/>
	# 요청 URI: <%= reqUri %> <br/>
	# 요청 프로토콜: <%= protocol %> <br/>
	# 요청 컨텍스트 루트 경로: <%= conPath %> <br/>
	# 서버 포트번호: <%= serverPort %> <br/>
	# 요청자 ip주소: <%= userIp %> <br/>
</p>


</body>
</html>