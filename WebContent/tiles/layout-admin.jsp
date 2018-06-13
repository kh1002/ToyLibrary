<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><tiles:getAsString name="title-admin" /></title>
</head>
<body>
	<table width="100%" height="100%" cellpadding="0" cellspacing="0"
		border="0">
		<tr>
			<td colspan="2" height="60">
				<tiles:insertAttribute name="header-admin" />
			</td>
		</tr>
		<tr>			
		<td colspan="2" valign="top" width="70%">
			<tiles:insertAttribute name="body-admin" />
		</td>
		</tr>
		<tr>
			<td colspan="2"><tiles:insertAttribute name="footer-admin" /></td>
		</tr>
	</table>
</body>
</html>
