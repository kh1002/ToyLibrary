<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이용후기</title>
</head>

<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>이용후기</h2></td>
		</tr>
	</table>
	
	<table width="600" border="1">
		<tr align="center" bgcolor="#f3f3f3">
			<td width="50"><strong>번호</strong></td>
			<td width="350"><strong>제목</strong></td>
			<td width="70"><strong>글쓴이</strong></td>
			<td width="80"><strong>날짜</strong></td>
			<td width="50"><strong>조회</strong></td>
		</tr>


	<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="userReviewViewAction">
			<s:param name="review_no">
				<s:property value="review_no" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
	
		<tr>
			<td><s:property value="review_no" /></td>
			<td align="left">
 				<s:a href="%{viewURL}"><s:property value="review_subject" /></s:a>
 			</td>
			<td><s:property value="review_name" /></td>
			<td><s:property value="review_regdate" /></td>
			<td><s:property value="review_readcount" /></td>
		</tr>


	</s:iterator>

	<s:if test="list.size() <= 0">
		<tr>
			<td colspan="5" align="center">등록된 게시물이 없습니다</td>
		</tr>
	</s:if>

	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>

	<tr align="right">
		<td colspan="5">
			<input type="button" value="글쓰기" onClick="javascript:location.href='userReviewWriteForm.action?currentPage=<s:property value="currentPage" />';" />
		</td>
	</tr>

	<tr align="center">
		<td colspan="5">
			<form>
				<select name="searchNum" >
					<option value="0">작성자</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
				</select>
				<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
				<input name="submit" type="submit" value="검색">
			</form>
		</td>
	</tr>
</table>
</body>
</html>










