<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>행사</title>
<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
</head>
<body>
<span class="jua" style="font-size:24pt; color:#00BFFF;">행&nbsp;사&nbsp;목&nbsp;록</span>
	<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th width="79px" class="text-center">번호</th>
									<th class="text-left">제목</th>
								</tr>
							</thead>


							<s:iterator value="list" status="stat">
								<s:url id="viewURL" action="userEventViewAction">
									<s:param name="event_no">
										<s:property value="event_no" />
									</s:param>

									<s:param name="currentPage">
										<s:property value="currentPage" />
									</s:param>

								</s:url>
								<tbody>
								<tr>
									<td class="text-center cart-product-title"><a
											href="single-details.html"><s:property value="event_no" /></a>
											</td>
									<td class="text-left"><s:a href="%{viewURL}">
												<s:property value="event_subject" />
											</s:a></td>
							
								</tr>
								</tbody>

							</s:iterator>



							<s:if test="list.size() <= 0">
								<tr>
									<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
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
		<tr>
			<td>
				<form>
					<select name="searchNum">
						<option value="0">제목</option>
						<option value="1">내용</option>
					</select>
					<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
						<input name="submit" type="submit" value="검색">
				</form>
			</td>
		</tr>
	</table>

</body>
</html>
