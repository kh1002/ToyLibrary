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



	<section class="padding-top100">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center" colspan="2">회원 정보 수정</th>


								</tr>
							</thead>
							<s:iterator value="list" status="stat">
								<s:url id="viewURL" action="userFaqViewAction">
									<s:param name="faq_no">
										<s:property value="faq_no" />
									</s:param>

									<s:param name="currentPage">
										<s:property value="currentPage" />
									</s:param>

								</s:url>
								<tbody>
									<tr>
										<td class="text-left"></td>
										<td class="text-left cart-product-title"><br><a
												href="single-details.html"><s:property value="faq_no" /></a>
												<hr></td>
										<td class="text-left"><br><s:a href="%{viewURL}">
													<s:property value="faq_subject" />
												</s:a></td>
										<td class="text-left"><br><div
													style="max-width: 200px;" class="input-group btn-block">
												</div></td>
									</tr>
								</tbody>
							</s:iterator>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>

	<s:if test="list.size() <= 0">
		<tr align="center">
			<td colspan="5">등록된 게시물이 없습니다.</td>
		</tr>
	</s:if>

	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>

	<tr align="right">
		<td colspan="5"></td>
	</tr>

	<tr align="center">
		<td colspan="5">
			<form>
				<select name="searchNum">
					<option value="0">제목</option>
					<option value="1">내용</option>
				</select>
				<s:textfield name="searchKeyword" theme="simple" value=""
					maxlength="20" />
				<input name="submit" type="submit" value="검색">
			</form>
		</td>
	</tr>


	</table>


</body>
</html>