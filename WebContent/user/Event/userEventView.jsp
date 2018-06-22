<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>상세보기</title>

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
									<td><s:property value="resultClass.event_no " /></td>
								</tr>

								<tr class="text-left">
									<td><b>제목</b></td>
									<td><s:property value="resultClass.event_subject" /></td>
								</tr>

								<tr class="text-left">
									<td><b>내용</b></td>
									<td><s:property value="resultClass.event_content" /></td>
								</tr>

								<tr class="text-left">
									<td><b>날짜</b></td>
									<td><s:property value="%{resultClass.event_startday}" />
										~ <s:property value="%{resultClass.event_endday}" /></td>
								</tr>

								<tr class="text-left">
									<td><b>행사장소</b></td>
									<td><s:property value="%{resultClass.event_position}" />

									</td>
								</tr>

								<tr class="text-left">
									<td><b>이미지</b></td>
									<td><s:if test="resultClass.file_savname == null">
                                  			      이미지가 없습니다.
                                        </s:if>
                                        <s:else>
                                             <s:if test="file_names[0] == null">
                                            </s:if>
                                            <s:else>
                                            	<img id="imglink" src="/ToyLibrary/image/<s:property value="file_names[0]"/> " width="500" border="0">
                                            </s:else><br>
                                            <s:if test="file_names[1] == null">
                                            </s:if>
                                            <s:else>
                                            	<img id="imglink" src="/ToyLibrary/image/<s:property value="file_names[1]"/> " width="500" border="0">
                                            </s:else>
                                            <br>
                                             <s:if test="file_names[2] == null">
                                            </s:if>
                                            <s:else>
                                            	<img id="imglink" src="/ToyLibrary/image/<s:property value="file_names[2]"/> " width="500" border="0">
                                            </s:else>
                                        </s:else></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
	</section>

	<tr>
	<div class="site-btn" style="margin-left: 800px;">
		<td align="right" colspan="2">
			<button class="btn" type="button" 
				onclick="javascript:location.href='userEventListAction.action?currentPage=<s:property value="currentPage" />'"
				class="btn_small3" style="background-color: #87df2d;">
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">목록</span>
				<span class="round" style="background-color: #35beea;"><i
					class="fa fa-chevron-right" style="color: white;"></i></span>
			</button>
		

		</td>
	</tr>

	</table>


</body>
</html>