<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>event 상세보기</title>
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
									<td><b>Number</b></td>
									<td><s:property value="resultClass.event_no " /></td>
								</tr>

								<tr class="text-left">
									<td><b>Subject</b></td>
									<td><s:property value="resultClass.event_subject" /></td>
								</tr>

								<tr class="text-left">
									<td><b>Content</b></td>
									<td><s:property value="resultClass.event_content" /></td>
								</tr>

								<tr class="text-left">
									<td><b>date</b></td>
									<td><s:property value="%{resultClass.event_startday}" />
										~ <s:property value="%{resultClass.event_endday}" /></td>
								</tr>

								<tr class="text-left">
									<td><b>place</b></td>
									<td><s:property value="%{resultClass.event_position}" />

									</td>
								</tr>

								<tr class="text-left">
									<td><b>uploadfile</b></td>
									<td><s:if test="resultClass.file_savname == null">
                                         			    이미지가 없습니다.
                                             </s:if> <s:else>
											<img id="imglink"
												src="/AdminBoard/image/<s:property value="file_names[0]"/> "
												width="150" border="0"> <img id="imglink"
												src="/AdminBoard/image/<s:property value="file_names[1]"/> "
												width="150" border="0"> <img id="imglink"
													src="/AdminBoard/image/<s:property value="file_names[2]"/> "
													width="150" border="0">
										</s:else></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
	</section>

	<tr>
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