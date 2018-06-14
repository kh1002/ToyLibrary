<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><tiles:getAsString name="title-admin" /></title>
</head>
<body>
	<table width="1000" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" class="boardListTd"><tiles:insertAttribute name="header-admin" /></td>
		</tr>
		<tr>
			<td colspan="2" height="10"></td>
		</tr>
		<tr>
			<td valign="top"><tiles:insertAttribute name="lefter-admin" /></td>
			<td valign="top" width="770">
			
			<table width="1000" cellpadding="0" cellspacing="0">
				<tr>
					<td colspan="2" height="10"></td>
				</tr>
				<tr>
					<td colspan="2" height="10"></td>
				</tr>
				<tr>
					<td colspan="2" height="10"></td>
				</tr>
			</table>
			
			<tiles:insertAttribute name="body-admin" /></td>
		</tr>
		<tr>
			<td colspan="2"><tiles:insertAttribute name="footer-admin" /></td>
		</tr>
	</table>
</body>
</html>