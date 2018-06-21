<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>문의사항 쓰기</title>



<script type="text/javascript">
	function validation() {
		var frm = document.forms(0);

		if (frm.qna_subject.value == "") {
			alert("입력해주세요");
			return false;
		} else if (frm.qna_name.value == "") {
			alert("입력해주세요");
			return false;
		} else if (frm.qna_password.value == "") {
			alert("입력해주세요");
			return false;
		} else if (frm.qna_content.value == "") {
			alert("입력해주세요");
			return false;
		}

		return true;
	}

	$(document).ready(function() {
		$("#qna_content").cleditor();
	});
</script>
</head>
<body>
	<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<form action="qnaWriteAction.action" method="post"
						onsubmit="return validation();">
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center" colspan="2">문의사항</th>
								</tr>
							</thead>
							<tbody>

								<tr class="text-left">
									<td><b>제목</b></td>
									<td><s:textfield name="qna_subject" theme="simple"
											value="%{resultClass.qna_subject}" maxlength="50" /></td>
								</tr>

								<tr class="text-left">
									<td><b>이름</b></td>
									<td><s:textfield name="qna_name" theme="simple"
											value="관리자" maxlength="20" /></td>
								</tr>

								<tr class="text-left">
									<td><b>비밀번호</b></td>
									<td><s:textfield name="qna_password" theme="simple"
											value="%{resultClass.qna_password}" maxlength="20" /></td>
								</tr>

								<tr class="text-left">
									<td><b>내용</b></td>
									<td><s:textarea name="qna_content" theme="simple"
											value="%{resultClass.qna_content}" cols="50" rows="10" /></td>
								</tr>
							</tbody>
						</table>

						<div class="site-btn">
							<button class="btn btn-1" type="submit">
								<span class="txt"
									style="color: #fff; font-family: sans-serif; font-weight: bold;">작성완료</span>
								<span class="round"><i class="fa fa-chevron-right"
									style="color: white"></i></span>
							</button>
						
							<button class="btn" type="button"
								onclick="javascript:location.href='qnaListAction.action?currentPage=<s:property value="currentPage" />'"
								class="btn_small3" style="background-color: #87df2d;">
								<span class="txt"
									style="color: #fff; font-family: sans-serif; font-weight: bold;">목록</span>
								<span class="round" style="background-color: #35beea;"><i
									class="fa fa-chevron-right" style="color: white;"></i></span>
							</button>
							
							
							<%-- <tr>
							<td align="right" colspan="2"><input name="submit"
								type="submit" value="작성완료"> <input name="list"
								type="button" value="목록"
								onClick="javascript:location.href='qnaListAction.action?currentPage=<s:property value="currentPage" />'">
							</td>
						</tr> --%>

						</div>
					</div>
				</form>
			</div>
	</section>
</body>
</html>