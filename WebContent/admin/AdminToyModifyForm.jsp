<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 장난감 수정하기</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<!-- 텍스트 장난감등록을 보여주는 코드 -->
<table width="600" border="0" cellspacing="0" cellpadding="2">
	<tr>
		<td align="center"><h2>장난감 수정</h2></td>
	</tr>
	<tr>
		<td height="20"></td>
	</tr>
</table>

<table width="600" border="1" cellspacing="0" cellpadding="0">

<form action="AdminToyModifyAction.action" method="post" enctype="multipart/form-data">
<!-- 숨겨서 보내는 데이터?? -->

	<s:hidden name="toy_id" value="%{resultClass.toy_id}"/>

	

<!-- 장난감이름 입력줄 -->
	<tr>
		<td align="center" width="150">
			장난감이름
		</td>
		<td>
			<s:textfield name="toy_name" theme="simple" value="%{resultClass.toy_name}" cssStyle="width:100px" maxlength="20"/>
		</td>
	</tr>
<!-- 장난감구성 입력줄 -->	
	<tr>
		<td align="center" width="150">
			장난감구성
		</td>
		<td>
		<s:textfield name="toy_gusung" theme="simple" value="%{resultClass.toy_gusung}" cssStyle="width:100px" maxlength="20"/>
		</td>
	</tr>
<!-- 추천연령 입력줄 -->	
	<tr>
		<td align="center" width="150">
			추천연령
		</td>
		<td>
			<s:select name="toy_age" list="#{'1to6':'1개월~6개월','7to12':'7개월~12개월','13to18':'13개월~18개월','19to24':'19개월~24개월','25to36':'25개월~36개월','37to48':'37개월~48개월'}" 
					  value="%{resultClass.toy_age}">
			</s:select>
		</td>
	</tr>
<!-- 장난감설명 입력줄 -->	
	<tr>
		<td align="center" width="150">
			장난감설명
		</td>
		<td>
			<s:textarea name="toy_detail" theme="simple" value="%{resultClass.toy_detail}"  cols="50" rows="5"/>
		</td>
	</tr>
<!-- 장난감사진 입력줄 -->	
	<tr>
		<td align="center" width="150">
			제품이미지
		</td>
		<td>
			<input type="file" name="file1">
		</td>
	</tr>
</table>	

<!-- 등록과 다시쓰기의 버튼 폼 코드 -->
<br/><br/>
<table align="center" width="600">
	<tr>
		<td>
			<input type="submit" value="수정">
			&nbsp;&nbsp;
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>

</body>

</html>
