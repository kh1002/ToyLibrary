<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>회원정보수정</title>
<script language="javascript">

function check() {
   var f = document.joinModify;
   
   if(f.member_id.value == ""){
      alert("아이디를 입력해주십시오.");
      f.member_id.focus();
      return false;
   }
   
   else if(f.member_id.value == "admin"){
	      alert("admin 아이디로 수정할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin1"){
	      alert("admin1 아이디로 수정할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin2"){
	      alert("admin2 아이디로 수정할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin3"){
	      alert("admin3 아이디로 수정할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
	   
   else if(f.member_pw.value == ""){
      alert("비밀번호를 입력해주십시오.");
      f.member_pw.focus();
      return false;
      
   }
   else if(f.member_name.value == ""){
      alert("이름을 입력해주십시오.");
      f.member_name.focus();
      return false;
      
   }
   
   else if(f.member_phone.value == ""){
	   alert("휴대전화를 입력해주십시오.");
	   f.member_phone.focus();
	   return false;
	      
	}
   
   else if(f.member_jumin1.value == ""){
      alert("주민등록번호를 입력해주십시오.");
      f.member_jumin1.focus();
      return false;
      
   }
   else if(f.member_jumin2.value == ""){
      alert("주빈등록번호를 입력해주십시오.");
      f.member_jumin2.focus();
      return false;
      
   }
   
   else if(f.member_mail.value == ""){
	      alert("이메일을 입력해주십시오.");
	      f.member_mail.focus();
	      return false;
	}
   
   else if (f.member_zipcode.value == ""){
      alert("우편번호를 검색하여 입력해주십시오.");
      f.member_zipcode.focus();
      return false;
      
   }
   
   else if (f.member_addr1.value == ""){
	      alert("주소를 입력해주세요.");
	      f.member_addr1.focus();
	      return false;
	   }
   
   else if (f.member_addr2.value == ""){
	      alert("상세주소를 입력해주세요.");
	      f.member_addr2.focus();
	      return false;
	}
   
   else {
	   f.submit();
   }
  
}

function pwCheck(){
	   var password = document.getElementById("member_pw").value;
	   var passwordCheck = document.getElementById("pwcheck").value;

	   if(passwordCheck == ""){
	      document.getElementById("passwordCheckText").innerHTML = ""
	   } else if (password != passwordCheck) {
	      document.getElementById("passwordCheckText").innerHTML = "비밀번호가 틀립니다."
	   } else {
	      document.getElementById("passwordCheckText").innerHTML = "비밀번호가 일치합니다."
	   }
	}

function postcode() {
    
    new daum.Postcode({
    	oncomplete: function(data) {
			
    		
    		document.getElementById("member_zipcode").value = data.postcode;
    		document.getElementById("member_addr1").value = data.address;
    		document.getElementById("member_addr2").focus();
   
        }
    }).open();

}


function openIdCheck(){

	   
	   var id = document.getElementById("member_id").value;
	   if(id == ""){
	      alert("아이디를 입력해주십시오.");
	      member_id.focus();
	      return false;
	   }
	   var idUrl = 'http://localhost:8080/testToyLibrary/idCheck.action?member_id='+ id;
	   window.open(idUrl,"confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=603, height=236");
	   
}

</script>
</head>
<body>
<table width="960" cellspacing="0" cellpadding="10" border="2" align="center">
	<tr>
		<td colspan="2" align="center">
		<table border="1" cellpadding="5" cellspacing="5" width="650">
			<tr>
			<form name="joinModify" action="joinModify.action" method="post"  onsubmit="return check()">
				<tr>
					<td width="100" height="30">아이디</td>
					<td width="5" height="30">:</td>
					<td width="200" height="30">
						<input type="text" name="member_id" id="member_id" size="13" value="${resultClass.member_id }" readonly/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">비밀번호</td>
					<td width="5" height="30">:</td>
					<td width="103" height="30">
						<input type=password name="member_pw" id="member_pw" size="14" maxlength="20">
					</td>
				</tr>
				<tr>
					<td width="100" height="30">비밀번호확인</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type=password name="pwcheck" id="pwcheck" size="14" maxlength="20" onkeyup="pwCheck();"/>&nbsp;<span id="passwordCheckText"></span>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">이름</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" name="member_name" size="14" maxlength="20" value="${resultClass.member_name }"/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">휴대폰번호</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" name="member_phone" size="14" maxlength="11" value="${resultClass.member_phone }"/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">주민번호</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" name="member_jumin1" size="8" maxlength="6" value="${resultClass.member_jumin1 }"/>&nbsp;&nbsp;-&nbsp;&nbsp;
						<input type="text" name="member_jumin2" size="8" maxlength="7" value="${resultClass.member_jumin2 }"/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">이메일</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" name="member_mail" size="14" maxlength="20" value="${resultClass.member_mail }"/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">우편번호</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" id="member_zipcode" name="member_zipcode" size="10" value="${resultClass.member_zipcode }" readonly/>
					</td>
					<td width="1" height="30" align="reft">
						<input type="button" value="우편번호찾기" class="btn btn-primary" onClick="javascript:postcode()"/>
					</td>
				</tr>
				<tr>
					<td width="100" height="30">주소</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" id="member_addr1" name="member_addr1" size="35" maxlength="35" value="${resultClass.member_addr1 }"/>
					</td>
				
				</tr>
				<tr>
					<td width="100" height="30">상세주소</td>
					<td width="5" height="30">:</td>
					<td width="120" height="30">
						<input type="text" id="member_addr2" name="member_addr2" size="35" maxlength="35" value="${resultClass.member_addr2 }"/>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="right">
						<input type="button" value="취소" onclick="javascript:window.location='MyReservationListAction.action'">	
						<input type="submit" value="정보수정" onClick="return check();">
					</td>
			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>