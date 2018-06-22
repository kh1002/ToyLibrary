<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>비밀번호 확인</title>
<script type="text/javascript">
	function locationURL()
	{
		if(window.name == 'modify'){
			window.opener.parent.location.href="userQnaModifyForm.action?qna_no=<s:property value="qna_no" />&currentPage=<s:property value="currentPage" />";			
		}else if(window.name == 'delete'){
			alert('삭제 되었습니다.');
			window.opener.parent.location.href="userQnaDeleteAction.action?qna_no=<s:property value="qna_no" />&currentPage=<s:property value="currentPage" />";
		}

		window.opener = self; 
		self.close();
	}
</script>
</head>
<body>
<script>locationURL()</script>
</body>
</html>