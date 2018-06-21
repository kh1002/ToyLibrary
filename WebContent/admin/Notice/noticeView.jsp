 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>공지사항</title>

<script type="text/javascript">
	function open_win_noresizable(url, name) {
		var oWin = window
				.open(url, name,
						"scrollbars=no, status=no, resizable=no, width=300, height=150");
	}
</script>
</head>

<body>
	<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-6 col-xs-12">
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
									<td><s:property value="resultClass.notice_no" /></td>
								</tr>

								<tr class="text-left">
									<td><b>제목</b></td>
									<td><s:property value="resultClass.notice_subject" /></td>
								</tr>

								<tr class="text-left">
									<td><b>작성자</b></td>
									<td><s:property value="resultClass.notice_name" /></td>
								</tr>

								<tr class="text-left">
									<td><b>내용</b></td>
									<td>${resultClass.notice_content }</td>
								</tr>

								<tr class="text-left">
									<td><b>조회수</b></td>
									<td><s:property value="resultClass.notice_readcount" /></td>
								</tr>

								<tr class="text-left">
									<td><b>등록날짜</b></td>
									<td><s:property value="resultClass.notice_regdate" /></td>
								</tr>
	
								</table>
							</form>	
							
							</tbody>
						</table>
						
						
						<table>
							<tr>
								<td colspan="2" align="right">
									<s:url id="modifyURL" action="noticeModifyForm">
										<s:param name="notice_no">
											<s:property value="notice_no" />
										</s:param>
									</s:url> 
									<s:url id="deleteURL" action="noticeDeleteAction">
										<s:param name="notice_no">
											<s:property value="notice_no" />
										</s:param>
									</s:url> 
				
									<div class="site-btn" style="margin-left: 600px;">
						                <button class="btn btn-1" type="button" onclick="javascript:location.href='noticeModifyForm.action?notice_no=<s:property value="resultClass.notice_no"/>&currentPage=<s:property value="currentPage"/>'"/>                                
						                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">수정</span>
						                    <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
						                </button>                 
						                <button class="btn btn-1" type="button" onclick="javascript:location.href='noticeDeleteAction.action?notice_no=<s:property value="resultClass.notice_no"/>&currentPage=<s:property value="currentPage"/>'"/>                               
						                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">삭제</span>
						                    <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
						                </button>
						                 <button class="btn btn-1" type="button" onClick="javascript:location.href='noticeListAction.action?currentPage=<s:property value="currentPage" />'">                              
						                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">목록</span>
						                    <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
						                </button>
					           		</div>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
</html> 



<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이용후기</title>

<script type="text/javascript">
	function open_win_noresizable(url, name)
	{
		var oWin = window.open(url, name, "scrollbars=no, status=no, resizable=no, width=300, height=150");
		
	}
</script>
</head>

<body>
	<table width="600" border="1">
	<tr>
		<td align="center"><h2>이용후기</h2></td>
	</tr>
	</table>

	<table width="600" border="1">
	
		<tr>
			<td width="100">번호</td>
			<td width="500">
				<s:property value="resultClass.review_no" />
			</td>
		</tr>
		<tr>
			<td width="100">제목</td>
			<td width="500">
				<s:property value="resultClass.review_subject" />
			</td>
		</tr>
		<tr>
			<td width="100">이름</td>
			<td width="500">
				<s:property value="resultClass.review_name" />
			</td>
		</tr>
		
		<tr>
			<td width="100">내용</td>
			<td width="500">
				${resultClass.review_content }
			</td>
		</tr>
		<tr>
			<td width="100">조회수</td>
			<td width="500">
				<s:property value="resultClass.review_readcount" />
			</td>
		</tr>
		<tr>
			<td width="100">등록날짜</td>
			<td width="500">
				<s:property value="resultClass.review_regdate" />
			</td>
		</tr>
		 <tr>
			<td width="100">첨부파일</td>
			<td width="500">
				&nbsp;&nbsp;
				<s:if test="resultClass.file_savname == null">
					이미지가 없습니다.
				</s:if>
				<s:else>
					<img id="imglink" src="/AdminBoard/reviewImage/<s:property value="file_names[0]"/> " width="150" border="0">
					<img id="imglink" src="/AdminBoard/reviewImage/<s:property value="file_names[1]"/> " width="150" border="0">
					<img id="imglink" src="/AdminBoard/reviewImage/<s:property value="file_names[2]"/> " width="150" border="0">
				</s:else>
			</td>
		</tr>
	
		<tr>
			<td colspan="2" height="10">
				<form action="userWriteCommentAction.action" method="post">
					<table>
						<tr>
							<td width="170">
								이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 <s:textfield name="creview_name" theme="simple" value="" maxlength="20" /><br>
								비밀번호 <s:textfield name="creview_password" theme="simple" value="" maxlength="20" />
							</td>
							<s:hidden name="review_no" value="%{resultClass.review_no}" />
					<!-- !!!!!!!!!!!!!!!!!!!!!!!!수정!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
							<s:hidden name="creview_no" value="%{resultClass.creview_no}" />
							<s:hidden name="currentPage" value="%{currentPage}" />
					<!-- !!!!!!!!!!!!!!!!!!!!!!!!수정!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
							<td align="left">
								<s:textarea name="creview_content" theme="simple" value="" cols="60" rows="3" />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<input name="submit" type="submit" value="작성완료">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	
	
	
		<s:iterator value="commentlist" status="stat">
		<tr>
			<td height="10" width="130" align="center">
				<s:property value="creview_name" /><br>
				<s:property value="creview_regdate" /><br><br>
			</td>
			<td>
			<!-- @@@@@@@@@@@@코멘트 삭제@@@@@@@@@@@@ -->
				<s:property value="creview_content" /> 
				<a href="javascript:open_win_noresizable('userCheckForm2.action?creview_no=<s:property value="creview_no" />&review_no=<s:property value="review_no" />&currentPage=<s:property value="currentPage" />','cdelete')">x</a>
			</td>
		</tr>
		</s:iterator>
		<tr>
			<td colspan="2" height="10">
				<s:if test="commentlist.size() <= 0">
				댓글없음
			</td>
		</tr>
				</s:if>	
	
	
		<tr>
			<td colspan="2" align="right">
				<s:url id="modifyURL" action="userReviewModifyForm">
					<s:param name="review_no">
						<s:property value="review_no" />
					</s:param>
				</s:url>
				<s:url id="deleteURL" action="userReviewDeleteAction">
					<s:param name="review_no">
						<s:property value="review_no" />
					</s:param>
				</s:url>
				<input name="list" type="button" value="수정" onClick="javascript:open_win_noresizable('userCheckForm.action?review_no=<s:property value="resultClass.review_no" />&currentPage=<s:property value="currentPage" />','modify')">
				<input name="list" type="button" value="삭제" onClick="javascript:open_win_noresizable('userCheckForm.action?review_no=<s:property value="resultClass.review_no" />&currentPage=<s:property value="currentPage" />','delete')">
				<input name="list" type="button" value="목록" onClick="javascript:location.href='userReviewListAction.action?currentPage=<s:property value="currentPage" />'">
			</td>
		</tr>
	</table>
</body>
</html>



















 --%>