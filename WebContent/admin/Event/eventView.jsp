<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>event 상세보기</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>event 상세보기</h2></td>
		</tr>
	</table>
	
	<table width="600" border="1">
      
      <tr>
      	<td>번호 </td>
      	<td>
      		&nbsp;&nbsp;<s:property value="resultClass.event_no "/>
      	</td>
      </tr>

      <tr>
        <td width="100">제목</td>
        <td width="500">
          &nbsp;&nbsp;<s:property value="resultClass.event_subject" />
        </td>
      </tr>

      <tr>
        <td>내용 </td>
        <td>
          &nbsp;&nbsp;<s:property value="resultClass.event_content" />
        </td>
      </tr>
      
      <tr>
			<td width="100">행사날짜</td>
			<td width="500">
				&nbsp;&nbsp;<s:property value="%{resultClass.event_startday}" /> ~
				<s:property value="%{resultClass.event_endday}" />
			</td>
		</tr>
		
		<tr>
			<td width="100">행사장소</td>
			<td width="500">
				&nbsp;&nbsp;<s:property value="%{resultClass.event_position}" />
			</td>
		</tr>
		
		
      <tr>
			<td width="100">첨부파일</td>
			<td width="500">
				&nbsp;&nbsp;
				<s:if test="resultClass.file_savname == null">
					이미지가 없습니다.
				</s:if>
				<s:else>
					<img id="imglink" src="/AdminBoard/image/<s:property value="file_names[0]"/> " width="150" border="0">
					<img id="imglink" src="/AdminBoard/image/<s:property value="file_names[1]"/> " width="150" border="0">
					<img id="imglink" src="/AdminBoard/image/<s:property value="file_names[2]"/> " width="150" border="0">
				</s:else>
			</td>
		</tr>

   
      <tr>
      	<td align="right" colspan="2">
      		<s:url id="modifyURL" action="eventModifyForm">
      			<s:param name="faq_no">
      				<s:property value="faq_no"/>
      			</s:param>
      		</s:url>
      		
      		<s:url id="deleteURL" action="eventDeleteAction">
      			<s:param name="event_no">
      				<s:property value="event_no"/>
      			</s:param>
      		</s:url>
      		
      		<input name="list" type="button" value="수정" onclick="javascript:location.href='eventModifyForm.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="삭제" onclick="javascript:location.href='eventDeleteAction.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="목록" onclick="javascript:location.href='eventListAction.action?currentPage=<s:property value="currentPage" />'" />
      		
      	</td>
      </tr>
      
	</table>
	
	
</body>
</html>