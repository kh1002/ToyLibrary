<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<link rel = "stylesheet" href ="member/css/style1.css" type="text/css" />
<script type="text/javascript">
function check() {
	var fi = document.idsearchform;
	
	if(fi.member_name.value ==""){
		alert("이름을 입력해주세요.")
		fi.member_name.focus();
		return false;
	}
	else if(fi.member_jumin1.value ==""){
		alert("주민등록번호를 입력해주세요.");
		fi.member_jumin1.focus();
		return false;
	}
	else if(fi.member_jumin2.value==""){
		alert("주민등록번호를 입력해주세요.");
		fi.member_jumin2.focus();
		return false;
	}
	else {
		fi.submit();
	}
}
</script>
</head>
<body>
<!-- <table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="500">
			<tr> -->
			<form action="loginIdSearch.action" method="post" name="idsearchform" id="idsearchform" onsubmit="return check()">

           <div class="container">
                <div class="row">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-content">
                                                    <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <h4><span class="jua" style="font-size:24pt;">아이디 찾기</h4></span>
                           

								<div class="form-group">
                                    <label for="input-email" class="control-label">이름<span>*</span></label>
                                    <input type="text" class="form-control" name="member_name" maxlength="10" required="" style="width:150px;">
                                </div>
                                

<!--      <form class="form-inline">
  <div class="form-group">
    <div class="input-group">
      <div class="input-group-addon">보낼 금액</div>
      <input type="text" class="form-control" id="exampleInputAmount" >
      <div class="input-group-addon">원</div>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">송금하기</button>
</form>
      -->
     
     
                                
                                <div class="form-group">
                                    <label for="input-password" class="control-label">주민번호<span>*</span></label>
                                    <input type="password" class="form-control" name="member_jumin1" maxlength="6" style="width:100px;">
                                   </div>
                                
                               <div class="form-group"> <label for="input-password" class="control-label"><span>-</span></label>
                                  <input type="password" class="form-control" name="member_jumin2" maxlength="6" style="width:100px;"> 
                                 </div>
                                 










<!-- 				<tr>
					<td width="23" height="30">이름</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30" colspan="3">
						<input type="text" name="member_name" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
					<td width="50" height="30">주민번호</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30">
						<input type="password" name="member_jumin1" size="14" maxlength="20">
					</td>
					<td width="5" height="30">-</td>
					<td width="103" height="30">
						<input type="password" name="member_jumin2" size="14" maxlength="20">
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="right">	
						<input type="submit" value="아이디찾기" onClick="return check();">
					</td> -->
			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>