<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>문의사항 상세보기</title>
<script type="text/javascript">
	function open_win_noresizable(url,name)
	{
		var oWin = window.open(url, name, "scrollbars=qna_no, status=qna_no, resizable=qna_no, width=300, height=150");
		
	}
</script>
</head>

<body>
	<table width="600" border="1">
	<tr>
		<td align="center"><h2>문의사항 상세보기</h2></td>
	</tr>
	</table>

	<table width="600" border="1">

		<tr>
			<td width="100">번호</td>
			<td width="500">
				<s:property value="resultClass.qna_no" />
			</td>
		</tr>
		<tr>
			<td width="100">제목</td>
			<td width="500">
				<s:property value="resultClass.qna_subject" />
			</td>
		</tr>
		<tr>
			<td width="100">이름</td>
			<td width="500">
				<s:property value="resultClass.qna_name" />
			</td>
		</tr>
		
		<tr>
			<td width="100">내용</td>
			<td width="500">
				${resultClass.qna_content }
			</td>
		</tr>
		<tr>
			<td width="100">조회수</td>
			<td width="500">
				<s:property value="resultClass.qna_readcount" />
			</td>
		</tr>
		<tr>
			<td width="100">등록날짜</td>
			<td width="500">
				<s:property value="resultClass.qna_regdate" />
			</td>
		</tr>
		

		
	
	
		<tr>
			<td colspan="2" align="right">
				<s:url id="modifyURL" action="userQnaModifyForm">
					<s:param name="qna_no">
						<s:property value="qna_no" />
					</s:param>
				</s:url>
				<s:url id="deleteURL" action="userQnaDeleteAction">
					<s:param name="qna_no">
						<s:property value="qna_no" />
					</s:param>
				</s:url>
				
				<input name="list" type="button" value="수정" onClick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','modify')">
				<input name="list" type="button" value="삭제" onClick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','delete')">
				<input name="list" type="button" value="목록" onClick="javascript:location.href='userQnaListAction.action?currentPage=<s:property value="currentPage" />'">
			</td>
		</tr>
	</table>
</body>
</html>















