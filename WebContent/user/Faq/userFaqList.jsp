
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>자주묻는질문</title>
<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
</head>
<body>
<span class="jua" style="font-size:24pt; color:#774be9;">&nbsp;&nbsp;자주묻는질문</span>
	<section class="padding-top50">
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

								</tr>
							</thead>
							<s:iterator value="list" status="stat">
								<s:url id="viewURL" action="userFaqViewAction">
									<s:param name="faq_no">
										<s:property value="faq_no" />
									</s:param>

									<s:param name="currentPage">
										<s:property value="currentPage" />
									</s:param>

								</s:url>
								<tbody>
									<tr>
										<td class="text-left"></td>
										<td class="text-left cart-product-title"><a
												href="single-details.html"><s:property value="faq_no" /></a>
												</td>
										<td class="text-left"><s:a href="%{viewURL}">
													<s:property value="faq_subject" />
												</s:a></td>
									
									</tr>
								</tbody>
							</s:iterator>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<s:if test="list.size() <= 0">
		<tr align="center">
			<td colspan="5">등록된 게시물이 없습니다.</td>
		</tr>
	</s:if>

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
				<s:textfield name="searchKeyword" theme="simple" value=""
					maxlength="20" />
				<input name="submit" type="submit" value="검색">
			</form>
		</td>
	</tr>


	</table>
	</section>
</body>
</html>