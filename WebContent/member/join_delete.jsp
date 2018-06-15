<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원탈퇴</title>
<script>
function check() {
	var ch = document.joinDelete;
	
	if(ch.member_id.value == ""){
		alert("아이디를 입력해주십시오.");
		ch.member_id.focus();
		return false;
	}
	else if(ch.member_pw.value == ""){
		alert("비밀번호를 입력해주십시오.");
		ch.member_pw.focus();
		return false;
	}
	
	else {
		ch.action = 'joinDelete.action';
		ch.submit();	
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
			<form name="joinDelete" id="joinform" method="post" onsubmit="return check()">
				<tr>
					<td width="100" height="30">아이디</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30" colspan="3">
						<input type="text" name="member_id" id="member_id" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
					<td width="100" height="30">비밀번호</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30" colspan="3">
						<input type="text" name="member_pw" id="member_pw" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="right">	
						<input type="button" value="취소" onClick="javascript:location.href='joinModify.action';">
						<input type="submit" value="회원탈퇴" onClick="return check();">
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