
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>공지사항</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td align="center"><h2>공지사항</h2></td>
		</tr>
	</table>
	<section class="padding-top100">
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
									<th class="text-left">날짜</th>
									<th class="text-left">조회수</th>

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
										<td class="text-left"></td>
										<td class="text-left cart-product-title"><br><s:property
													value="notice_no" />
												<hr></td>
										<td class="text-left"><br><s:a href="%{viewURL}">
													<s:property value="notice_subject" />
												</s:a></td>

										<td class="text-left"><br><s:property
													value="notice_regdate" /></td>


										<td class="text-left"><br><s:property
													value="notice_readcount" /></td>



										<td class="text-left"><br><div
													style="max-width: 200px;" class="input-group btn-block">


												</div></td>

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


</body>
</html>