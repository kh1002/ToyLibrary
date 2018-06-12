<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>event 쓰기</title>
		<script type="text/javascript">
		function validation()
		{
			var frm = document.forms(0);
			
			if(frm.event_subject.value == "") 
			{
				alert("제목을 입력해주세요.");
				return false;
			} 
			else if(frm.event_content.value == "") 
			{
				alert("내용을 입력해주세요.");
				return false;			
			} 
			
			return true;
		}
	</script>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>event 쓰기</h2></td>
		</tr>
	</table>
	
	<s:if test="resultClass == null">
		<form action="eventWriteAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">
	</s:if>
	<s:else>
		<form action="eventModifyAction.action" method="post" enctype="multipart/form-data">
		<s:hidden name="event_no" value="%{resultClass.event_no}"/>
		<s:hidden name="currentPage" value="%{currentPage}"/>
	</s:else>
	
	<table width="600" border="1">

			
		<tr>
			<td width="100">제목</td>
			<td width="500">
				<s:textfield name="event_subject" theme="simple" value="%{resultClass.event_subject}" maxlength="50" />
			</td>
		</tr>
		
		<tr>
			<td>내용</td>
			
			<td>
				<s:textarea name="event_content" theme="simple" value="%{resultClass.event_content}" cols="50" rows="10" /> 
			</td>
		</tr>
		
		<tr>
			<td width="100">행사날짜</td>
			<td width="500">
				<s:textfield name="event_startday" theme="simple" value="%{resultClass.event_startday}" maxlength="50" /> ~
				<s:textfield name="event_endday" theme="simple" value="%{resultClass.event_endday}" maxlength="50" />
			</td>
		</tr>
		
		<tr>
			<td width="100">행사장소</td>
			<td width="500">
				<s:textfield name="event_position" theme="simple" value="%{resultClass.event_position}" maxlength="50" />
			</td>
		</tr>
		
		<tr>
			<td width="600" align="center" colspan="2">이미지</td>
		</tr>
				
			<s:file label="File(1)" name="uploads" />
			<s:file label="File(2)" name="uploads" />
			<s:file label="File(3)" name="uploads" />
		

        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료"/>
            <input name="list" type="button" value="목록" onClick="javascript:location.href='eventListAction.action?currentPage=<s:property value="currentPage" />'"/>
          </td>
        </tr>
        
	</table>
	
	</form>
</body>
</html>