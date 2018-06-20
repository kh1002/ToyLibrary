<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<section>
	<div class="container">
		<div class="row">
			<div class="col-md-8 md-offset-3">
	

			 <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
                           <span class="jua" style="font-size:24pt; color:#774be9;">회원 목록</span>

			
			
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>

									<th class="text-left">&nbsp;&nbsp;&nbsp;회원 아이디</th>
									<th class="text-left">회원 이름</th>
									<th class="text-left">가입일</th>
								</tr>
							</thead>


	<s:iterator value="list" status="stat">
			<s:url id="viewURL" action="adminMemberDetailForm">
				<s:param name="member_id">
					<s:property value="member_id" />
				</s:param>
			<s:param name="currentPage">
					<s:property value="currentPage" />
				</s:param>
			</s:url>
			
		<tr bgcolor="white" align="center">
			<td align="left">&nbsp;&nbsp;&nbsp;<s:a href="%{viewURL}"><s:property value="member_id" /></s:a></td>
			<td align="left">&nbsp;<s:property value="member_name" /></td>
			<td align="left"><s:property value="member_join_date" />
			</td>
		</tr>
		
		</s:iterator>
		


<!-- -->
		<s:if test="list.size() <= 0">

			<tr bgcolor="#FFFFFF" align="left">
				<td colspan="3">등록된 회원이 없습니다.<s:property value="member_id" /></td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="3"></td>
			</tr>

		</s:if> 
		
		<tr align="center">
		<td colspan="3"><s:property value="pagingHtml"  escape="false"></s:property></td></tr>
	</table>
	<br>
	</br>
	</div>
	</form>
	</div>
	</div>
	</div>
	</section>
	
</body>
</html>