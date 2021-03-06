
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.HashMap" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>공지사항</title>
<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
</head>
<body>
<span class="jua" style="font-size:24pt; color:#774be9;">&nbsp;&nbsp;공지사항</span>
	<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center">번호</th>
									<th class="text-left">제목</th>
									<th class="text-left">날짜</th>
									<th class="text-center">조회수</th>

								</tr>
							</thead>
							
							<s:iterator value="list" status="stat">
								<s:url id="viewURL" action="userNoticeViewAction">
									<s:param name="notice_no">
										<s:property value="notice_no" />
									</s:param>

									<s:param name="currentPage">
										<s:property value="currentPage" />
									</s:param>
								</s:url>
								
								
								<tbody>
									<tr>
										<td class="text-center cart-product-title"><s:property value="notice_no" /></td>
										<td class="text-left">
											<s:a href="%{viewURL}"><s:property value="notice_subject" /></s:a>
										</td>
										<td class="text-left"><s:property value="notice_regdate" /></td>
										<td class="text-center"><s:property value="notice_readcount" /></td>
									</tr>
									
									
								</tbody>
								
							</s:iterator>

						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	
<table align="center">
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>

	<tr align="right">
		<td colspan="5"></td>
	</tr>

	<tr align="center">
		<td colspan="5">
			<form>
				<select name="searchNum">
					<option value="0">제목</option>
					<option value="1">내용</option>
				</select>
				<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
				<input name="submit" type="submit" value="검색"></input>
			</form>
		</td>
	</tr>
</table>


</body>
</html>