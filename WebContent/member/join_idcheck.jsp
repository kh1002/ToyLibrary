<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복확인</title>
<link rel = "stylesheet" href ="member/css/style1.css" type="text/css" />
<script type="text/javascript">
function checkId(){
	opener.document.memberInfo.member_id.value="${member_id}";
	document.getElementById("member_id").value = opener.document.memberInfo.member_id.value;
	self.close();
	
}
</script>
</head>
<body leftmargin="0" topmargin="0" style= "overflow:hidden">
<form action="idCheck.action" method="post" name="idCheck" onsubmit="return check()">

<center><h1> 아이디 중복 확인</h1></center>


	<table width="600" border="0" cellspacing="0" cellpadding="0" class="idChk">
		<tr align="center">
			<td height="30">
				<s:if test="chkId == 1">
					<div class="popup_message2">
						<strong class="font_blue">${member_id }</strong><br />
						<strong>이미 사용중인 아이디입니다.</strong><br />
						<span class="font_11">다른 아이디를 입력해 주세요.</span><br />
					</div>
				</s:if>
				<s:else>
					<div class="popup_message2 popup_graybox">
						<strong class="font_blue">${member_id}</strong><br />
						<strong>사용할 수 있는 아이디입니다.</strong><br />
					</div>					
				</s:else>
				<br>
				<input type="button" value="닫기" onclick="window.close()" class="idChk"/>
			</td>
		</tr>	
	</table>

</form>
</body>
</html>