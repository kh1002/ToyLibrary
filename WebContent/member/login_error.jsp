<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>로그인실패</title>
</head>
<body>

<body>

           <div class="container">
                <div class="row">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-content">
                                                    <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <h4><span class="jua" style="font-size:24pt; <%-- color:#00BFFF; --%>">로그인</h4></span>
                           
                           <span style="font-family: 'Droid Sans', sans-serif; color: #ff3366; font-size: 16px;">
                           로그인 실패!</span> <br></br>
<span style="font-family: 'Droid Sans', sans-serif; color: #ff3366; font-size: 16px;"> <span class="jua"><b>>></b></span>아이디가 없거나 비밀번호가 틀립니다.


<div class="button">

<br>



		<button class="btn" type="button" onclick="javascript:location.href='idSearch.action';" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">아이디 찾기</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button> 

        
		<button class="btn" type="button" onclick="javascript:location.href='pwSearch.action';" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">비밀번호 찾기</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>  
       
   		<button class="btn" type="button" onclick="javascript:location.href='loginMain.action';" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">로그인</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>  
           
       



















<!-- <table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="500">
			<tr>
				<tr>
					<td height="30" colspan"6" align="center">
						아이디가 존재하지 않거나 비밀번호가 틀립니다. <br/>
					</td>
				</tr>
			
				<tr>
					<td height="30" colspan="6" align="right">
						<input type="button" value="아이디찾기" onClick="javascript:location.href='idSearch.action';">	
						<input type="button" value="비밀번호찾기" onClick="javascript:location.href='pwSearch.action';">
						<input type="button" value="로그인" onClick="javascript:location.href='loginMain.action';">
					</td>
				</tr>
			
			</tr>
		</table>
		</td>
	</tr>
</table> -->

</body>
</html>