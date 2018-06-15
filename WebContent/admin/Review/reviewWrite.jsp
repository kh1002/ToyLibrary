<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>스트럿츠 2 게시판</title>



<script type="text/javascript">
	function validation()
	{
		var frm = document.forms(0);

		if(frm.review_subject.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.review_name.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.review_password.value == "")
		{
			alert("입력해주세요");
			return false;
		}
		else if(frm.review_content.value == "")
		{
			alert("입력해주세요");
			return false;
		}

		return true;
	}
	
	 $(document).ready(function(){
		 $("#review_content").cleditor();
	 });
</script>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>스트럿츠 게시판</h2></td>
		</tr>
	</table>
	
	
	<s:if test="resultClass == NULL">
		<form action="reviewWriteAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">
	</s:if>
	
	<s:else>
		<form action="reviewModifyAction.action" method="post" enctype="multipart/form-data">
			<s:hidden name="review_no" value="%{resultClass.review_no}" />
			<s:hidden name="currentPage" value="%{currentPage}" />
	</s:else>
	<table width="600" border="1">
        
				
        <tr>
          <td width="100">제목</td>
          <td width="500">
            <s:textfield name="review_subject" theme="simple" value="%{resultClass.review_subject}" maxlength="50"/>
          </td>
        </tr>
        							
        <tr>
          <td>이름 </td>
          <td>
            <s:textfield name="review_name" theme="simple" value="관리자" maxlength="20"/>
          </td>
        </tr>
 
        <tr>
          <td>비밀번호 </td>
          <td>
            <s:textfield name="review_password" theme="simple" value="%{resultClass.review_password}" maxlength="20"/>
          </td>
        </tr>
     
        
	<tr>
          <td>내용 </td>
          <td>
            <s:textarea name="review_content" theme="simple" value="%{resultClass.review_content}" cols="50" rows="10" />
          </td>
        </tr>
        
        <tr>
			<td width="600" align="center" colspan="2">이미지</td>
		</tr>
				
			<s:file label="File(1)" name="uploads" />
			<s:file label="File(2)" name="uploads" />
			<s:file label="File(3)" name="uploads" />
		

        
        <tr>
        
        
        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료">
            <input name="list" type="button" value="목록" onClick="javascript:location.href='reviewListAction.action?currentPage=<s:property value="currentPage" />'">
          </td>
        </tr>

    </table>
</form>
</body>
</html>