<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<form action="score_bean_make.jsp">
	<%-- 국어, 영어, 수학 점수를 입력받아 전송하는 폼 작성 --%>
	<div align="center"> 
		<table border="1">
			<tr>
				<td>국어 점수</td>
				<td><input type="text" name="kor" size="10"></td>
			</tr>
			<tr>
				<td>영어 점수</td>
				<td><input type="text" name="eng" size="10"></td>
			</tr>
			<tr>
				<td>수학 점수</td>
				<td><input type="text" name="math" size="10"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</div>
</form>	
</body>
</html>