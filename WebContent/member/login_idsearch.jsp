<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<link rel = "stylesheet" href ="member/css/style1.css" type="text/css" />
<script type="text/javascript">
function check() {
	var fi = document.idsearchform;
	
	if(fi.member_name.value ==""){
		alert("이름을 입력해주세요.")
		fi.member_name.focus();
		return false;
	}
	else if(fi.member_jumin1.value ==""){
		alert("주민등록번호를 입력해주세요.");
		fi.member_jumin1.focus();
		return false;
	}
	else if(fi.member_jumin2.value==""){
		alert("주민등록번호를 입력해주세요.");
		fi.member_jumin2.focus();
		return false;
	}
	else {
		fi.submit();
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
			<form action="loginIdSearch.action" method="post" name="idsearchform" id="idsearchform" onsubmit="return check()">
				<tr>
					<td width="23" height="30">이름</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30" colspan="3">
						<input type="text" name="member_name" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
					<td width="50" height="30">주민번호</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30">
						<input type="password" name="member_jumin1" size="14" maxlength="20">
					</td>
					<td width="5" height="30">-</td>
					<td width="103" height="30">
						<input type="password" name="member_jumin2" size="14" maxlength="20">
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="right">	
						<input type="submit" value="아이디찾기" onClick="return check();">
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