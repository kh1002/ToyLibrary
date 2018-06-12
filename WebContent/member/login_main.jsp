<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page session="true" %>
<html>
<head>
<title>로그인</title>
<script>

function check(){
	
	var d = document.login;
	
	if(d.member_id.value == ""){
		alert("아이디를 입력하세요.");
		d.member_id.focus();
		return false;
	}
	
	if(d.member_pw.value == ""){
		alert("비밀번호를 입력하세요.");
		d.member_pw.focus();
		return false;
	}
	else { 
	d.submit();
	}
}



</script>
</head>
<body>
<table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="500">
			<tr>
			<form action="login.action" method="post" name="login" onsubmit="return check()">
				<tr>
					<td width="23" height="30">아이디</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30">
						<input type="text" name="member_id" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
					<td width="20" height="30">비밀번호</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30">
						<input type="password" name="member_pw" size="14" maxlength="20">
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="right">	
						<input type="button" value="아이디찾기" onClick="javascript:location.href='idSearch.action';">
						<input type="button" value="비밀번호찾기" onClick="javascript:location.href='pwSearch.action';">
						<input type="button" value="회원가입" onClick="javascript:location.href='joinMain.action';">
						<input type="submit" value="로그인" onClick="return check();">
					</td>
			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>