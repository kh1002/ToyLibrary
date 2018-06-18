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

<!-- 검색창을 보여주는 jsp코드 -->

<table align="center">
		<tr>															
			<td>
			
			<form method="post">
					<select name="searchNum" >
						<option value="0">이름</option>
						<option value="1">현재지점</option>
						<option value="2">현재상태</option>
					</select>
					
					<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20"/>
					<input name="submit" type="submit" value="검색" class="inputb"/>
				</form>
				
			</td>
		</tr>
		
		
	
</table>
<!-- 장난감 등록한 리스트들을 출력하는 코드.
반복을 이용하여 출력해야 한다. -->
<p></p><br/>

<!-- 반복 전 테이블의 제목들을 나타내는 코드 -->
<table width="805">
	<tr>
		<th width="115" scope="col" style="text-align:center">
			<b>장난감번호</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>장난감사진</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>장난감이름</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>추천연령</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>현재상태</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>현재지점</b>
		</th>
		<th width="115" scope="col" style="text-align:center">
			<b>수정/삭제</b>
		</th>
	</tr>	

<!-- 장난감 목록에 대한 리스트를 반복으로 나타내는 코드 -->

		<!-- 스트러츠 태그에서는 iterator이 반복문 역할을 함 -->

		<s:iterator value="list" status="stat">
			
			<s:url id = "modifyURL" action="AdminToyModifyForm" >
				<s:param name="toy_id">
					<s:property value="toy_id" />
				</s:param>
			</s:url>
			
			<s:url id = "deleteURL" action="AdminToyDeleteAction" >
				<s:param name="toy_id">
					<s:property value="toy_id" />
				</s:param>
			</s:url>
			
			<tr bgcolor="#ffffff" align="center">
				<td><s:property value="toy_id"/></td>	
				<td><img id="imglink" src="/ToyLibrary/image/<s:property value="toy_image"/>" width="150" border="0"/></td>
				
				<td align="left"><s:property value="toy_name"/></td>
				<td align="center"><s:property value="toy_age"/></td>
				<td align="center"><s:property value="state_code"/></td>
				
		<%-- 이런식으로 지점이름을 받아와서 출력하고 싶은데 어떻게 하는지 잘 모르겠다.		
					<s:if test="zizum_no == 1">
						<td><s:property value="resultClass.zizum_name"/></td>
					</s:if>
					 <s:elseif test="zizum_no == 2">
						<td><s:property value="resultClass.zizum_name"/></td>
					</s:elseif>
					<s:elseif test="zizum_no == 3">
						<td><s:property value="resultClass.zizum_name"/></td>
					</s:elseif>  --%>
				
	
					<s:if test="zizum_no == 1">
						<td>강남점</td>
					</s:if>
					 <s:elseif test="zizum_no == 2">
						<td>역삼점</td>
					</s:elseif>
					<s:elseif test="zizum_no == 3">
						<td>교대점</td>
					</s:elseif>  
				
				 <td>
				 	<s:if test="zresultClass.admin_no == zizum_no">
				 		<s:a href="%{modifyURL}">수정</s:a>
						/
						<s:a href="%{deleteURL}">삭제</s:a>
				 	</s:if>
				 	<s:else>
				 		수정
				 		/
				 		삭제
				 	</s:else>
				 	
					
				</td> 
					
		</s:iterator>
		
		<s:if test="list.size() <=0">
		
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

<!--  반복의 끝이란다 -->




<!-- 반복을 통해 장난감상품 DB에 들어있는 값을 꺼내온다 -->
<!-- iterator을 써야할거같음 -->



<!-- 반복문 -->
<!-- <tr>
		<td width="115" align="center">
			장난감번호를 {}$로 
		</td>
		<td width="115" align="center">
			<img src="./upload/푸.gif" width="130" height="130" border="0">
		</td>
		<td width="115" align="center">
			장난감이름 {}$로 
		</td>
		<td width="115" align="center">
			추천연령 {}$로 
		</td>
		<td width="115" align="center">
			현재상태를 {}$로 
		</td>
		<td width="115" align="center">
			현재지점을 {}$로 
		</td>
		<td width="115" align="center">
			<a href="">수정</a> /
			
			<a href="">삭제</a>
		</td>
	</tr>	
	 -->
<!-- 반복문 끝-->	




<!-- 장난감등록 링크를 나타내는 소스. (버튼으로 바꿀까??) -->
<table align="right">
	<tr>
		<td>
			<input type="button" value="장난감등록" class="inputb"
				onclick="javascript:location.href='AdminToyWriteForm.action';">
		</td>
	</tr>
</table>


</body>

</html>