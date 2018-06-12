<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>문의사항 쓰기</title>



<script type="text/javascript">
	function validation()
	{
		var frm = document.forms(0);

		if(frm.qna_subject.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.qna_name.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.qna_password.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.qna_content.value == "")
		{
			alert("입력해주세요");
			return false;
		}

		return true;
	}
	
	 $(document).ready(function(){
		 $("#qna_content").cleditor();
	 });
</script>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>문의사항 쓰기</h2></td>
		</tr>
	</table>
	
	<s:if test="resultClass == NULL">
		<form action="userQnaWriteAction.action" method="post" onsubmit="return validation();">
	</s:if>
	
	<s:else>
		<form action="userQnaModifyAction.action" method="post">
			<s:hidden name="qna_no" value="%{resultClass.qna_no}" />
			<s:hidden name="currentPage" value="%{currentPage}" />
	</s:else>
	<table width="600" border="1">


				
        <tr>
          <td width="100">제목</td>
          <td width="500">
            <s:textfield name="qna_subject" theme="simple" value="%{resultClass.qna_subject}" maxlength="50"/>
          </td>
        </tr>
        							
        
        <tr>
          <td>이름 </td>
          <td>
            <s:textfield name="qna_name" theme="simple" value="%{resultClass.qna_name}" maxlength="20"/>
          </td>
        </tr>

 
        <tr>
          <td>비밀번호 </td>
          <td>
            <s:textfield name="qna_password" theme="simple" value="%{resultClass.qna_password}" maxlength="20"/>
          </td>
        </tr>

        
	<tr>
          <td>내용 </td>
          <td>
            <s:textarea name="qna_content" theme="simple" value="%{resultClass.qna_content}" cols="50" rows="10" />
          </td>
        </tr>

        
        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료">
            <input name="list" type="button" value="목록" onClick="javascript:location.href='userQnaListAction.action?currentPage=<s:property value="currentPage" />'">
          </td>
        </tr>

    </table>
</form>
</body>
</html>