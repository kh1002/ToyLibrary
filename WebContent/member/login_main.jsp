<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page session="true" %>
<html>
<head>
<title>로그인</title>


<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />


<script>

function check(){
	
	var d = document.login;
	
	if(d.member_id.value == ""){
		alert("아이디를 입력하세요.");
		d.member_id.focus();
		return false;
	}
	
	if(d.member_pw.value == ""){
		alert("비밀번호를 입력하세요.");
		d.member_pw.focus();
		return false;
	}
	else { 
	d.submit();
	}
}



</script>
</head>
<body>

			<form action="login.action" method="post" name="login" onsubmit="return check()">
			
           <div class="container">
                <div class="row">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-content">
                                                    <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <h4><span class="jua" style="font-size:24pt;">로그인</h4></span>
                           
			<form action="login.action" method="post" name="login" onsubmit="return check()">
			
                                <div class="form-group">
                                    <label for="input-email" class="control-label">아이디<span>*</span></label>
                                    <input type="text" class="form-control" id="input-email" value="" name="member_id" required="" style="width:150px;">
                                </div>
                                <div class="form-group">
                                    <label for="input-password" class="control-label">비밀번호<span>*</span></label>
                                    <input type="password" class="form-control" id="input-password" value="" name="member_pw" required="" style="width:150px;">
                                    <br>
                                </div>
                                <div class="site-btn">
                                    <button class="btn btn-1" type="submit">                                 
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">로그인</span>
                                        <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
                                    </button>
                                    
                                </div>
                                <div class="site-btn">
                                    <button class="btn btn-1" type="button" onclick="javascript:window.location='./joinMain.action'">                                   
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">회원가입</span>
                                        <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
                                    </button>
                                    </div>
<br>
<br>
                                <a class="forgot-psw" href="idSearch.action">아이디 찾기</a>
                                <a class="forgot-psw" href="pwSearch.action">비밀번호 찾기</a>


                            </form>
                        </div>
                    </div>

                            </form>
                        </div>

                </div>
            </div>







</body>
</html>