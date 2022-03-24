<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- div태그는 division 요소들을 박스로 묶어주는 역할 -->
<!-- align: 정렬 -->
<div align=center> 

		<table border="1" width="700">
			<tr>
				<td>앨범 커버</td>
				<td>가수</td>
				<td>앨범 제목</td>
				<td>발매일</td>
			</tr>
			<tr>
				<td align="center">					
					<img src="01.jpg" width="100" height="100">					
				</td>
				<td>러블리즈</td>
				<td>					
					<a href="req_album_result.jsp?title=lovelyz4">Lovelyz 4th Mini Album 治癒(치유)</a>			
				</td>
				<td>2018-04-23</td>
			</tr>
			<tr>	
				<td align="center">					
					<img src="02.jpg" width="100" height="100"/>					
				</td>
				<td>오마이걸</td>
				<td>					
					<a href="req_album_result.jsp?title=secret">비밀정원</a>							
				</td>
				<td>2018-01-09</td>
			</tr>
			
		</table>		

</div>
</body>
</html>