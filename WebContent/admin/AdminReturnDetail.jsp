<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 반납관리 상세보기</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<table width="600" border="0" cellspacing="0" cellpadding="2">
	<tr>
		<td align="center"><h2>관리자 반납관리</h2></td>
	</tr>
	<tr>
		<td height="20"></td>
	</tr>
</table>

<!-- 대여관리 폼 -->

<table width="600" border="1" cellspacing="0" cellpadding="0">


<!-- 
<form action="writeAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">
 -->
<form action="AdminReturnDetailStateAction.action" method="post" enctype="multipart/form-data">
<!-- 숨겨서 보내는 데이터?? -->
	<s:hidden name="toy_id" value="%{resultClass.toy_id}"/>
	

<!-- 장난감번호 입력줄 -->
	<tr>
		<td align="center" width="150">
			장난감번호
		</td>
		<td><s:property value="resultClass.toy_id"/></td>
	</tr>
<!-- 장난감이름 입력줄 -->	
	<tr>
		<td align="center" width="150">
			장난감이름
		</td>
		<td><s:property value="resultClass.toy_name"/></td>
	</tr>
<!-- 대여자 입력폼-->	
	<tr>
		<td align="center" width="150">
			대여자
		</td>
		<td><s:property value="resultClass.member_name"/></td>
	</tr>
<!-- 대여지점 입력줄 -->	
	<tr>
		<td align="center" width="150">
			대여지점
		</td>
		<td>
			<s:property value="resultClass.zizum_name"/>
		</td>
	</tr>
<!-- 예약일 입력줄 -->	
	<tr>
		<td align="center" width="150">
			예약일/대여일
		</td>
		<td>
			<s:property value="resultClass.reserve_date"/>
		</td>
	</tr>
	
<!-- 대여가능일 입력줄 -->	
	<tr>
		<td align="center" width="150">
			대여가능일/반납일
		</td>
		<td>
			<s:property value="resultClass.return_date"/>
		</td>
	</tr>	
	
<!-- 셀렉트 박스 입력줄 -->	
	<tr>	
		<td align="center" width="150">
			대여정보수정
		</td>
		<td>
			<s:select name="state_code" list="#{'대여중':'대여','대여가능':'반납'}" 
					  value="%{resultClass.state_code}">
			</s:select>
		</td>
	</tr>		
	
	
	
</table>	

<!--  -->
<br/><br/>
<table align="center" width="600">
	<tr>
		<td>
			<input type="submit" value="확인">
			&nbsp;&nbsp;
			<input type="" value="취소">
		</td>
	</tr>
</table>


</body>

</html>