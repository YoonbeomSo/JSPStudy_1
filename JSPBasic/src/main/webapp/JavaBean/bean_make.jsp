<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.bum.jspbasic.user.UserBean" %>

<%
	request.setCharacterEncoding("utf-8");
	
	/*
		bean 사용 안하는 경우
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		request.setAttribute("user_id",id);
		request.setAttribute("user_pw",pw);
		request.setAttribute("user_name",name);
		request.setAttribute("user_email",email);
	*/
	
	/*
		user.setId(request.getParameter("id"));
		user.setPw(request.getParameter("pw"));
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		request.setAttribute("user",user);
	*/
	
	
	/*
		#참고
		UserBean user  = new UserBean(id, pw, name, email);
		request.setAttribute("user",user);
		위 두줄을 아래 한줄로 요약 가능
		<jsp:useBean id="user" class="kr.co.bum.jspbasic.user.UserBean" scope="request"/>
	*/
%>

<jsp:useBean id="user" class="kr.co.bum.jspbasic.user.UserBean" scope="request"/>

<%--
	* 파라미터의 이름과 자바빈 클래스의 멤버변수명이 일치할 경우
	액션태그 setProperty의 속성 property값을 *로 지정하면
	자동으로 파라미터값을 읽어서 자바빈 클래스 변수에 저장합니다.
 --%>

<jsp:setProperty name="user" property="*" />

<%--
	<jsp:setProperty name="user" property="id" value="<%= id %>"/>
	<jsp:setProperty name="user" property="pw" value="<%= pw %>"/>
	<jsp:setProperty name="user" property="name" value="<%= name %>"/>
	<jsp:setProperty name="user" property="email" value="<%= email %>"/>
 --%>
 

<jsp:forward page="bean_use.jsp" />
