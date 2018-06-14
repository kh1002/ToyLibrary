<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>Insert title here</title>
</head>
<body>
<table width="650" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr>
    <td colspan="2" height="39" align="center">
       <font size="+1" ><b>회원 정보</b></font></td>
    </tr>
    <tr>
      <td width="250" ><b>아이디 패스워드</b></td>
      <td width="400" > </td>
    </tr> 

    <tr>
      <td width="250"> 사용자 ID</td>
      <td width="400">

      ${ resultClass.member_id}
      </td>
    </tr>
    <tr>
      <td width="250"> 비밀번호</td>
      <td width="400" >
       ${ resultClass.member_pw}
      </td>
      </tr>
    <tr>
      <td width="250" ><b>개인정보</b></td>
      <td width="400" > </td>
    </tr> 
    <tr>
      <td width="250">사용자 이름</td>
      <td width="400">
        ${ resultClass.member_name}
      </td>
    </tr>
     <tr>
      <td width="250">E-Mail</td>
      <td width="400">
        ${ resultClass.member_mail}
      </td>
    </tr>
  
    <tr>
      <td width="250">휴대전화 번호</td>
      <td width="400">
        ${ resultClass.member_phone}
      </td>
    </tr>
    <tr>
<tr> 
       <td width="250">우편번호</td>
       <td> ${resultClass.member_zipcode}
          </tr>
    <tr> 
       <td>주소</td>
       <td>${resultClass.member_addr1}
    </tr>
    <tr> 
       <td>상세주소</td>
       <td>${resultClass.member_addr2}
    </tr>
    <tr>
      <td colspan="2" align="center" >
          		
	<input name="list" type="button" value="삭제" class="inputb" 
		onClick="javascript:location.href='adminMemberDeleteAction.action?member_id='+
		'<s:property value="resultClass.member_id" />'"/>&nbsp&nbsp&nbsp
          <input type="button" value="취소" onclick="javascript:location.href='adminMemberListForm.action'">
      </td>
    </tr>
  
  </table>

</body>
</html>