<%@ page contentType="text/html; charset=utf-8"%>
<%
	
	//사용자 화면 메인 타일즈가 실행. 
	//System.out.println("mainAction 실행");
	//response.sendRedirect("mainAction.action"); 
	
	//관리자 화면 타일즈가 실행. 세션값에 의해 판별가능하면 이 코드는 필요없어짐.
	System.out.println("mainAction2 실행");
	response.sendRedirect("mainAction2.action"); 
	
%>
