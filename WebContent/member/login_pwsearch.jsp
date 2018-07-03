<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<link rel = "stylesheet" href ="member/css/style1.css" type="text/css" />
<script type="text/javascript">
function check() {
	var fi = document.pwsearchform;
	
	if(fi.member_id.value ==""){
		alert("아이디를 입력해주세요.")
		fi.member_id.focus();
		return false;
	}
	
	else if(fi.member_name.value ==""){
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
<style type="text/css">
input.form_jumin{
	height: 34px;
	font-size: 14px;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ff3366;
	border-radius: 4px;
}
</style>
</head>
	<form action="loginPwSearch.action" method="post" name="pwsearchform" id="pwsearchform" onsubmit="return check()"> 
			
			
           <div class="container">
                <div class="row">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-content">
                                                    <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <h4><span class="jua" style="font-size:24pt; <%-- color:#00BFFF; --%>">비밀번호 찾기</span></h4>
                           

<div class="form-group">
                                    <label for="input-email" class="control-label">아이디<span>*</span></label>
                                    <input type="text" class="form-control" name="member_id" maxlength="10" style="width:150px;">
                                </div>



								<div class="form-group">
                                    <label for="input-email" class="control-label">이름<span>*</span></label>
                                    <input type="text" class="form-control" name="member_name" maxlength="10" style="width:150px;">
                                </div>
                                


     
     
                                
                                <div class="form-group">
                                    <label for="input-password" class="control-label">주민번호<span>*</span></label>
                                    <br>
                                    <input type="password" class="form_jumin" name="member_jumin1" maxlength="6" style="width:100px;">
                                    &nbsp;-&nbsp;
                                    <input type="password" class="form_jumin" name="member_jumin2" maxlength="7" style="width:100px;">
                                   </div>


<div class="button">

<br>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
        
		<button class="btn" type="submit" onclick="return check();" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">비밀번호 찾기</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>  
       


</div>





			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>



<!-- </head>
<body>
<table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="500">
			<tr>
			<form action="loginPwSearch.action" method="post" name="pwsearchform" id="pwsearchform" onsubmit="return check()">
				<tr>
					<td width="23" height="30">아이디</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30" colspan="3">
						<input type="text" name="member_id" size="13" maxlength="20">
					</td>
				</tr>
				<tr>
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
						<input type="submit" value="비밀번호찾기" onClick="return check();">
					</td>
			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html> -->