<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ʈ���� 2 �Խ���</title>


<link rel="stylesheet" href="/struts2_board/board/common/css/css.css" type="text/css">

</head>
<body>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h2>��Ʈ���� �Խ���</h2></td>
		</tr>
	</table>
	
	
	<s:if test="resultClass == NULL">
		<form action="writeAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">
	</s:if>
	
	<s:else>
		<form action="modifyAction.action" method="post" enctype="multipart/form-data">
			<s:hidden name="no" value="%{resultClass.no}" />
			<s:hidden name="currentPage" value="%{currentPage}" />
			<s:hidden name="old_file" value="%{resultClass.file_savname}" />
	</s:else>
	<table width="600" border="0" cellspacing="0" cellpadding="0">
 
				
        <tr>
          <td width="100">����</td>
          <td width="500">
            <s:textfield name="subject" theme="simple" value="%{resultClass.subject}" cssStyle="width:370px" maxlength="50"/>
          </td>
        </tr>
        						
        
   

        
        <tr>
          <td bgcolor="#F4F4F4">  ÷������ </td>
          <td bgcolor="#FFFFFF">
            <s:file name="upload" theme="simple"/>
            
            <s:if test="resultClass.file_orgname != NULL">
				&nbsp; * <s:property value="resultClass.file_orgname" /> ������ ��ϵǾ� �ֽ��ϴ�. �ٽ� ���ε��ϸ� ������ ������ �����˴ϴ�.
			</s:if>
						
          </td>
        </tr>

        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="�ۼ��Ϸ�" class="inputb">
            <input name="list" type="button" value="���" class="inputb" onClick="javascript:location.href='listAction.action?currentPage=<s:property value="currentPage" />'">
          </td>
        </tr>

    </table>
</form>
</body>
</html>