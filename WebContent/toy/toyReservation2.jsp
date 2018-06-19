<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>장난감 대여 내역</title>


</head>

<body>


<h2>대여 내역</h2>

<table width="800" border="0" cellspacing="0" cellpadding="2">

	<tr>
		<th width="180" scope="col" style="text-align:center">
		
			<b>장난감 번호</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>장난감 이름</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>대출 지점</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>대출일</b>
		</th>
		<th width="200"  scope="col" style="text-align:center">
			<b>반납 예정일</b>
		</th>
		<th width="180"  scope="col" style="text-align:center">
			<b>상태</b>
			</th>
	</tr>	
</table>



<!-- 장난감 목록에 대한 리스트를 반복으로 나타내는 코드 -->
 <table width="800">

		<s:iterator value="MyRentlist" status="stat">
		


			<tr align="center">
				<td width="180"><s:property value="toy_id"/></td>	
				<td width="180"><s:property value="toy_name"/></td>
				<td width="180"><s:property value="zizum_name"/></td>
				<td width="180"><s:property value="reserve_date"/></td>
				<td width="180"><s:property value="return_date"/></td>
				<td width="180"><s:property value="state_code"/></td>
				</td>

			</tr>
			
				
		</s:iterator>
		
		<s:if test="MyRentlist.size() <=0">
		
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