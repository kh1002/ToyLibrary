<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이용후기</title>

<script type="text/javascript">
	function open_win_noresizable(url, name) {
		var oWin = window
				.open(url, name,
						"scrollbars=no, status=no, resizable=no, width=300, height=150");

	}
</script>
</head>

<body>
	<section class="padding-top100">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center" colspan="2">상세보기</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-left">
									<td><b>번호</b></td>
									<td><s:property value="resultClass.review_no" /></td>
								</tr>

								<tr class="text-left">
									<td><b>제목</b></td>
									<td><s:property value="resultClass.review_subject" /></td>
								</tr>

								<tr class="text-left">
									<td><b>작성자</b></td>
									<td><s:property value="resultClass.review_name" /></td>
								</tr>

								<tr class="text-left">
									<td><b>내용</b></td>
									<td>${resultClass.review_content }</td>
								</tr>

								<tr class="text-left">
									<td><b>조회수</b></td>
									<td><s:property value="resultClass.review_readcount" /></td>
								</tr>

								<tr class="text-left">
									<td><b>등록날짜</b></td>
									<td><s:property value="resultClass.review_regdate" /></td>
								</tr>

								<tr class="text-left">
									<td><b>이미지</b></td>
									<td><s:if test="resultClass.file_savname == null">
                                             			       이미지가 없습니다.
                                                </s:if> <s:else>
											<img id="imglink"
												src="/AdminBoard/reviewImage/<s:property value="file_names[0]"/> "
												width="150" border="0">
											<img id="imglink"
												src="/AdminBoard/reviewImage/<s:property value="file_names[1]"/> "
												width="150" border="0">
											<img id="imglink"
												src="/AdminBoard/reviewImage/<s:property value="file_names[2]"/> "
												width="150" border="0">
										</s:else></td>
								</tr>
							<form action="userWriteCommentAction.action" method="post">
								<table>
								<tr class="text-left">
									<td><b>작성자<s:textfield name="creview_name"
												theme="simple" value="" maxlength="16" /> 
									비밀번호<s:textfield name="creview_password" theme="simple" value=""
												maxlength="16" /></b></td>
									<s:hidden name="review_no" value="%{resultClass.review_no}" />
									<s:hidden name="creview_no" value="%{resultClass.creview_no}" />
									<s:hidden name="currentPage" value="%{currentPage}" />
									<td><b><s:textarea name="creview_content" theme="simple"
											value="" cols="50" rows="4" /></b></td>
								<tr class="text-left">
									<td colspan="2" align="right"><input name="submit"
										type="submit" value="작성완료"></td>
								</tr>
							</table>
						</form>	
							</tbody>
						</table>
					</div>
				</form>
			</div>
	



	<s:iterator value="commentlist" status="stat">
		<tr>
			<td height="10" width="130" align="center"><s:property
					value="creview_name" /><br> <s:property
					value="creview_regdate" /><br>
			<br></td>
			<td>
				<!-- @@@@@@@@@@@@코멘트 삭제@@@@@@@@@@@@ --> <s:property
					value="creview_content" /> <a
				href="javascript:open_win_noresizable('userCheckForm2.action?creview_no=<s:property value="creview_no" />&review_no=<s:property value="review_no" />&currentPage=<s:property value="currentPage" />','cdelete')">x</a>
			</td>
		</tr>
	</s:iterator>
	<tr>
		<td colspan="2" height="10"><s:if test="commentlist.size() <= 0">
				댓글없음
			</td>
	</tr>
	</s:if>


	<tr>
		<td colspan="2" align="right"><s:url id="modifyURL"
				action="userReviewModifyForm">
				<s:param name="review_no">
					<s:property value="review_no" />
				</s:param>
			</s:url> <s:url id="deleteURL" action="userReviewDeleteAction">
				<s:param name="review_no">
					<s:property value="review_no" />
				</s:param>
			</s:url> <input name="list" type="button" value="수정"
			onClick="javascript:open_win_noresizable('userCheckForm.action?review_no=<s:property value="resultClass.review_no" />&currentPage=<s:property value="currentPage" />','modify')">
			<input name="list" type="button" value="삭제"
			onClick="javascript:open_win_noresizable('userCheckForm.action?review_no=<s:property value="resultClass.review_no" />&currentPage=<s:property value="currentPage" />','delete')">
			<input name="list" type="button" value="목록"
			onClick="javascript:location.href='userReviewListAction.action?currentPage=<s:property value="currentPage" />'">
		</td>
	</tr>
	</table>
</body>
</html>















