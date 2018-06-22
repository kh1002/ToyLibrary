<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>문의사항</title>
<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.jua {
	font-family: 'BM JUA', '배달의민족 주아', sans-serif;
}
</style>
</head>

<body>
	<span class="jua" style="font-size: 24pt; color:  #774be9;">&nbsp;&nbsp;Q&A</span>
	<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"></th>
									<th class="text-left">번호</th>
									<th class="text-left">제목</th>
									<th class="text-left">작성자</th>
									<th class="text-left">등록날짜</th>
									<th class="text-left">조회수</th>

								</tr>
							</thead>
							<s:iterator value="list" status="stat">
								<s:url id="viewURL" action="userQnaViewAction">
									<s:param name="qna_no">
										<s:property value="qna_no" />
									</s:param>
									<s:param name="currentPage">
										<s:property value="currentPage" />
									</s:param>
								</s:url>
								<tbody>
									<tr>
										<td class="text-left"></td>
										<td class="text-left cart-product-title"><s:property
												value="qna_no" /></td>
										<td class="text-left"><s:a href="%{viewURL}">
												<s:property value="qna_subject" />
											</s:a></td>
										<td class="text-left"><s:property value="qna_name" /></td>
										<td class="text-left"><s:property value="qna_regdate" /></td>
										<td class="text-left"><s:property value="qna_readcount" /></td>
									</tr>
								</tbody>
							</s:iterator>
							<s:if test="list.size() <= 0">
								<tr>
									<td colspan="5" align="center">등록된 게시물이 없습니다</td>
								</tr>
							</s:if>
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

		<div class="site-btn" align="right">
			<button class="btn btn-1" type="button"
				onclick="javascript:location.href='userQnaWriteForm.action?currentPage=<s:property value="currentPage" />';" />
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">글쓰기</span>
				<span class="round"><i class="fa fa-chevron-right"
					style="color: white;"></i></span>
			</button>
		</div>
		<%-- <tr align="right">
			<td colspan="5"><input type="button" value="글쓰기"
				onClick="javascript:location.href='userQnaWriteForm.action?currentPage=<s:property value="currentPage" />';" />
			</td>
		</tr> --%>

		<tr>
			<td>
				<form>
					<select name="searchNum">
						<option value="0">작성자</option>
						<option value="1">제목</option>
						<option value="2">내용</option>
					</select>
					<s:textfield name="searchKeyword" theme="simple" value=""
						maxlength="20" />
					<input name="submit" type="submit" value="검색" />
				</form>
			</td>
		</tr>
	</table>
</body>
</html>











