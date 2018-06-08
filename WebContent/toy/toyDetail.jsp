<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>사용자 장난감 상세보기</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<table>
	<tr>
		<td height="60" colspan="2">상 세 보 기</td>
	</tr>
		<tr>
			<td width="303" height="223" align="center" valign="middle">
			<img src="./upload/}" width="300" height="300"/>
			</td>
			<td width="500" align="center" valign="middle">
				<table width="500" height="200" border="0">
				<!-- 장난감이름 -->
					<tr>
						<!-- <td colspan="2">뽀로로장난감을 db에서 이름을 꺼내야되는데</td> -->
						<td width="100">장난감이름</td>
						<td><s:property value="resultClass.toy_name"/></td>
					</tr>
				<!-- 장난감영역 -->
					<tr>
						<td width="100">장난감구성</td>
						<td><s:property value="resultClass.toy_gusung"/></td>
					</tr>
				<!-- 사용연령 -->
					<tr>
						<td width="100">사용연령</td>
						<td><s:property value="resultClass.toy_age"/></td>
					</tr>
				<!-- 상세설명 -->
					<tr>
						<td width="100">상세설명</td>
						<td><s:property value="resultClass.toy_detail"/></td>
					</tr>
				</table>
				<!-- 2번째 td의 테이블의 끝 -->
			</td>
		</tr>
</table>
<!-- 장난감정보 큰 타이틀 -->
	<tr>
		<h2>
			<td>장난감 정보</td>
		</h2>
	</tr>
<!-- 장난감 바코드|대여자|... 과 같은 정보 -->
<table width="600">
	<tr>
		<th width="120" scope="col" style="text-align:center">
			<b>바코드</b>
		</th>
		<th width="120"  scope="col" style="text-align:center">
			<b>장난감이름</b>
		</th>
		<th width="120"  scope="col" style="text-align:center">
			<b>대여상태</b>
		</th>
		<th width="120"  scope="col" style="text-align:center">
			<b>대출일</b>
		</th>
		<th width="120"  scope="col" style="text-align:center">
			<b>반납예정일</b>
		</th>
	</tr>	
</table>
	
	<!-- 장난감에 해당하는 정보들을 반복을 통해 꺼내와야 하는 부분 -->
<iterator>
		<!-- 근데 로직은 몰라 ㅋ-ㅋ -->
		
			<s:url id = "viewURL" action="ToyReserveForm">
					<s:param name="toy_id">
						<s:property value="toy_id" />
					</s:param>
					
			 		<s:param name="zizum_no">
						<s:property value="zizum_no" />
					</s:param>
	
					<s:param name="currentPage">
						<s:property value="currentPage" />
					</s:param>
				</s:url>
		
		
<table width="600">
	<tr>
	
	<td width="120" scope="col" style="text-align:center">
		<s:property value="resultClass.toy_id"/>
	</td>
	<td width="120" scope="col" style="text-align:center">
		<s:property value="resultClass.toy_name"/>
	</td>
	
	<!-- 이부분에서 if문으로 상태값을 판별하여 예약중과 대여중일때에는 링크를 막아야 함. -->
	
	<td width="120" scope="col" style="text-align:center">
		<s:a href="%{viewURL}"><s:property value="resultClass.state_code"/></s:a>
	</td>
	<!-- 이부분까지 -->
	
	<td>
		<s:property value="resultClass.reserve_date"/>
	</td>
	<td>
		<s:property value="resultClass.return_date"/>
	</td>
	
	</tr>
</table>
		
</iterator>
	

<table>
	
</table>





</body>

</html>


<!-- 실행은 http://localhost:8080/ToyLibrary/ToyDetailAction.action -->