<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>사용자 장난감 예약하기</title>
<!-- 	<link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>
<table width="600" border="0" cellspacing="0" cellpadding="0">



<!-- 장난감 예약하기 타이틀 -->
	<tr align="center">
		<td height="60" align="center" colspan="2"><h2>장난감 예약하기</h2></td>
	</tr>
	
<!-- 이미지가 나타나는 코드 -->
	<tr align="center">
		<td width="303" height="223" align="center" valign="middle">
		<img src="./upload/}" 
			width="300" height="300"/>
		</td>
		
	</tr>
	<p></p>	
</table>		
	
<!-- 장난감과 사용자, 대여지점 정보가 나타나는 소스코드 -->		
<table width="600" border="0" cellspacing="0" cellpadding="0">
	
<form action="ToyReserveAction.action" method="post" enctype="multipart/form-data">

   <s:hidden name="toy_id" value="%{toy_id}"/>
   <s:hidden name="member_id" value=""/>
   <s:hidden name="zizum_no" value="%{zizum_no}"/>
		
		<!-- 장난감코드 -->
			<tr>
				<td>장난감코드</td>
				<td>
			 	<%-- <s:textfield name="toy_id" theme="simple" value="%{TresultClass.toy_id}" cssStyle="width:100px" maxlength="20"/>
				 --%>
					<s:property value="TresultClass.toy_id"/> 
				</td>
			</tr>
		<!-- 장난감이름 -->
 			<tr>
				<td>장난감이름</td>
				<td>
					<s:property value="TresultClass.toy_name"/>
				</td>
			</tr> 
		<!-- 대여자ID -->
			<tr>
				<td>대여자ID</td>
				<td>
					<%-- <s:textfield name="member_id" theme="simple" value="%{ZresultClass.zizum_no}" cssStyle="width:100px" maxlength="20"/>
				 --%>	
					<s:property value="ZresultClass.zizum_no"/>
						
				</td>
			</tr>
		<!-- 대여자명 -->
			<tr>
				<td>대여자명</td>
						<!-- 	<td>상세한 설명을 db에서 어떻게 받아와야할까</td> -->
				<td><s:property value="ZresultClass.zizum_name"/></td> 
			</tr>
		<!-- 대여지점 -->
			<tr>
				<td>대여지점</td>
				<td>
						<%-- <s:textfield name="reserve_zizum" theme="simple" value="%{resultClass.reserve_zizum}" cssStyle="width:100px" maxlength="20"/>
					 --%>
				 <s:property value="ZresultClass.admin_no"/>
				 </td>
			</tr>

</table>

<br>
<br>
</br></br>

	<input type="submit" value="예약하기">
	<input type="button" value="취소" onClick="">

</body>

</html>