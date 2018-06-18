<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>자주묻는질문</title>
	<link rel="stylesheet" href="/AdminBoard/admin/bootstrap-3.3.2/css/bootstrap.css" type="text/css"/>

</head>

<body>
	<table class="table" width="600" border="1">
		<tr>
			<td align="center"><h2>자주묻는질문</h2></td>
		</tr>
	</table>
	
	<table width="600" border="1">
		<tr align="center">
			<td width="50"><strong>번호</strong></td>
			<td width="350"><strong>제목</strong></td>
		</tr>
		
		<s:iterator value="list" status="stat">
			<s:url id="viewURL" action="faqViewAction">
				<s:param name="faq_no">
					<s:property value="faq_no"/>
				</s:param>
				
				<s:param name="currentPage">
					<s:property value="currentPage"/>
				</s:param>
				
			</s:url>
			
			<tr align="center">
				<td><s:property value="faq_no"/></td>
				<td align="left">&nbsp;<s:a href="%{viewURL}"><s:property value="faq_subject"/></s:a></td>
			</tr>
			
		</s:iterator>
		
		<s:if test="list.size() <= 0">
			<tr align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
		</s:if>
		
		</table>
		<table class="table">
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
		</tr>
		
		<tr align="right">
			<td colspan="5">
				<input type="button" value="글쓰기" onclick="javascript:location.href='faqWriteForm.action?currentPage=<s:property value="currentPage"/>';"/>
			</td>
		</tr>
		
		<tr align="center">
			<td colspan="5">
				<form>
					<select name="searchNum" >
						<option value="0">제목</option>
						<option value="1">내용</option>
					</select>
					<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
					<input name="submit" type="submit" value="검색">
				</form>
			</td>
		</tr>
	

	</table>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet"
	href="/ToyLibrary2/common/bootstrap-3.3.2/css/style2.css"
	type="text/css" />
	<title>자주묻는질문</title>
</head>

<body>
	<table width="600" border="0" id="form" class="formbar">
		<tr>
			<td align="center"><h2>자주묻는질문</h2></td>
		</tr>
	</table>
	
	<table width="600" border="1">
		<tr align="center" id="form">
			<td width="50"><strong>번호</strong></td>
			<td width="350"><strong>제목</strong></td>
		</tr>
		
		<s:iterator value="list" status="stat">
			<s:url id="viewURL" action="faqViewAction">
				<s:param name="faq_no">
					<s:property value="faq_no"/>
				</s:param>
				
				<s:param name="currentPage">
					<s:property value="currentPage"/>
				</s:param>
				
			</s:url>
			
			<tr align="center">
				<td><s:property value="faq_no"/></td>
				<td align="left">&nbsp;<s:a href="%{viewURL}"><s:property value="faq_subject"/></s:a></td>
			</tr>
			
		</s:iterator>
		
		<s:if test="list.size() <= 0">
			<tr align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
		</s:if>
		
		</table>
		<table width="600" border="1">
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
		</tr>
		
		<tr align="right">
			<td colspan="5">
				<input class="hreflink" type="button" value="글쓰기" onclick="javascript:location.href='faqWriteForm.action?currentPage=<s:property value="currentPage"/>';"/>
			</td>
		</tr>
		
		<tr align="center">
			<td colspan="5">
				<form>
					<select name="searchNum" >
						<option value="0">제목</option>
						<option value="1">내용</option>
					</select>
					<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
					<input class="hreflink" name="submit" type="submit" value="검색"/>
				</form>
			</td>
		</tr>
	

	</table>
</body>
</html>