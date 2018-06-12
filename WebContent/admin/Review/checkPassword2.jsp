<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>비밀번호 확인</title>
</head>
<body>
<h2>비밀번호 확인</h2>
	<form action="checkAction2.action" method="post">
		<s:hidden name="creview_no" value="%{creview_no}" />
		<s:hidden name="review_no" value="%{review_no}" />
		<s:hidden name="currentPage" value="%{currentPage}" />
		
		<table width="250" border="1">
		
			<tr>
				<td width="100">비밀번호 입력</td>
				<td width="150">
					&nbsp;&nbsp; <s:textfield name="creview_password" theme="simple" maxlength="20" />
					&nbsp;&nbsp; <input name="submit" type="submit" value="확인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>