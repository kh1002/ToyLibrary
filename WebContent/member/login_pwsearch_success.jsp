<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>비밀번호찾기</title>
</head>
<body>
<table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="500">
			<tr>
				<tr>
					<td height="30" colspan"6" align="center">
						비밀번호 찾기 결과 성공! <br/>
						비밀번호 : ${resultClass.member_pw}
					</td>
				</tr>
			
				<tr>
					<td height="30" colspan="6" align="right">	
						<input type="button" value="로그인" onClick="javascript:location.href='loginMain.action';">
					</td>
				</tr>
			
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>