<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>자주묻는질문 상세보기</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>자주묻는질문 상세보기</h2></td>
		</tr>
	</table>
	
	<table width="600" border="1">
      
      <tr>
      	<td>번호 </td>
      	<td>
      		&nbsp;&nbsp;<s:property value="resultClass.faq_no "/>
      	</td>
      </tr>

      <tr>
        <td width="100">제목</td>
        <td width="500">
          &nbsp;&nbsp;<s:property value="resultClass.faq_subject" />
        </td>
      </tr>

      <tr>
        <td>내용 </td>
        <td>
          &nbsp;&nbsp;<s:property value="resultClass.faq_content" />
        </td>
      </tr>

   
      <tr>
      	<td align="right" colspan="2">
      		
      		<input name="list" type="button" value="목록" onclick="javascript:location.href='userFaqListAction.action?currentPage=<s:property value="currentPage" />'" />
      		
      	</td>
      </tr>
      
	</table>
	
	
</body>
</html>