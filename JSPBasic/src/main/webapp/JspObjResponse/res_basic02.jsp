<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String strage = request.getParameter("age");
    	int age = Integer.parseInt(strage);
    	
    	String url = "http://localhost:8181/JSPBasic/jspObjResponse/res_basic_ok.jsp";
    	if(age >= 20) {
    		//response 객체가 제공하는 sendRedirect() 메서드의 매개값으로
    		//이동 시킬 URL주소를 적으면 해당 페이지로 강제 이동합니다.
    		response.sendRedirect(url);
    	}else {
    		response.sendRedirect("res_basic_no.jsp");
    	}
    %>