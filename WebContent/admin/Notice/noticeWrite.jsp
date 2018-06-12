<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>공지사항 글쓰기</title>
		<script type="text/javascript">
		function validation()
		{
			var frm = document.forms(0);
			
			if(frm.notice_subject.value == "") 
			{
				alert("제목을 입력해주세요.");
				return false;
			} 
			else if(frm.notice_content.value == "") 
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
			<td align="center"><h2>공지사항 글쓰기</h2></td>
		</tr>
	</table>
	
	<s:if test="resultClass == null">
		<form action="noticeWriteAction.action" method="post" onsubmit="return validation();">
	</s:if>
	<s:else>
		<form action="noticeModifyAction.action" method="post">
		<s:hidden name="notice_no" value="%{resultClass.notice_no}"/>
		<s:hidden name="currentPage" value="%{currentPage}"/>
	</s:else>
	
	<table width="600" border="1">
		<tr>
			<td align="right" colspan="2">
				<font color="#FF0000">*</font>
				는 필수 입력사항입니다.
			</td>
		</tr>
			
		<tr>
			<td width="100">
				<font color="#FF0000">*</font> 제목
			</td>
			<td width="500">
				<s:textfield name="notice_subject" theme="simple" value="%{resultClass.notice_subject}" maxlength="50" />
			</td>
		</tr>
		
		<tr>
			<td>
				<font color="#FF0000">*</font>
				내용
			</td>
			
			<td>
				<s:textarea name="notice_content" theme="simple" value="%{resultClass.notice_content}" cols="50" rows="10" />
			</td>
		</tr>
        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료"/>
            <input name="list" type="button" value="목록" onClick="javascript:location.href='noticeListAction.action?currentPage=<s:property value="currentPage" />'"/>
          </td>
        </tr>
        
	</table>
	
	</form>
</body>
</html>