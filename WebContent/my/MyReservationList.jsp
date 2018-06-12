<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>장난감 예약 내역</title>


</head>

<body>

<h2>예약내역</h2>

<table width="800" border="0" cellspacing="0" cellpadding="2">

	<tr>
		<th width="180" scope="col" style="text-align:center">
		
			<b>장난감 번호</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>장난감 이름</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>예약 지점</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>예약일</b>
		</th>
		<th width="200"  scope="col" style="text-align:center">
			<b>대여 가능 기한</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>상태</b>
		</th>	
		<th width="180"  scope="col" style="text-align:center">
			<b>예약 취소</b>
		</th>	
	</tr>	
</table>

 <table width="800">

		<s:iterator value="MyReservationlist" status="stat">
		
			<s:url id = "myReserveCancleURL" action="MyReservationModifyStateAction" >
				<s:param name="toy_id">
					<s:property value="toy_id" />
				</s:param>
				<s:param name="member_id">
					<s:property value="member_id" />
				</s:param>
			</s:url>

			<tr align="center">
				<td width="180" align="center"><s:property value="toy_id"/></td>	
				<td width="180" align="center"><s:property value="toy_name"/></td>
				<td width="180" align="center"><s:property value="zizum_name"/></td>
				<td width="180" align="center"><s:property value="reserve_date"/></td>
				<td width="200" align="center"><s:property value="return_date"/></td>
				<td width="180" align="center"><s:property value="state_code"/></td>
				<td width="180" scope="col" style="text-align:center">
					<s:a href="%{myReserveCancleURL}">예약 취소</s:a>
				</td>
			</tr>
			
				
		</s:iterator>
		
		<s:if test="MyReservationlist.size() <=0">
		
		<tr bgcolor="#ffffff" align="center">
			<td colspan="5">등록된 게시물이 없습니다.</td>
		</tr>
		<tr bgcolor="#ffffff">
			<td height="1" colspan="5"></td>
		</tr>
	
		</s:if>
		


</table>







</body>

</html>