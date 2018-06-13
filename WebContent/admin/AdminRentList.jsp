<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 대여관리 리스트</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<table align="center">
		<tr>															
			<td>
			
			<form>
					<select name="searchNum" >
						<option value="0">이름</option>
					</select>
					
					<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20"/>
					<input name="submit" type="submit" value="검색" class="inputb"/>
				</form>
				
			</td>
		</tr>
		
		
	
</table>

	<table width="800">
	<tr bgcolor="aa223e">
		<th width="100" scope="col" style="text-align:center">
			<b>장난감번호</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>장난감이름</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>대여자</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>대여지점</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>예약일</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>대여가능기한</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>대여상태</b>
		</th>
		<th width="100" scope="col" style="text-align:center">
			<b>상태수정</b>
		</th>
	</tr>	
</table>


<!-- 장난감 목록에 대한 리스트를 반복으로 나타내는 코드 -->
 <table width="800">

		<s:iterator value="RentInfolist" status="stat">
		
				<s:url id = "viewURL" action="AdminRentDetailForm.action" >
					<s:param name="toy_id">
						<s:property value="toy_id" />
					</s:param>
				</s:url>

			<tr bgcolor="#e2341f" align="center">
				<td width="100"><s:property value="toy_id"/></td>	
				<td width="100"><s:property value="toy_name"/></td>
				<td width="100"><s:property value="member_name"/></td>
				<td width="100"><s:property value="zizum_name"/></td>
				<td width="100"><s:property value="reserve_date"/></td>
				<td width="100"><s:property value="return_date"/></td>
				<td width="100"><s:property value="state_code"/></td>
				<td width="100" scope="col" style="text-align:center">
					<s:a href="%{viewURL}">상태변경</s:a>
				</td>

			</tr>
			
			<tr bgcolor="#777777">
				<td height="1" colspan="5"></td>
			</tr>					
		</s:iterator>
		
		<s:if test="RentInfolist.size() <=0">
		
		<tr bgcolor="#ffffff" align="center">
			<td colspan="5">등록된 게시물이 없습니다.</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>
	
		</s:if>
		
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
		</tr>

</table>


</body>

</html>