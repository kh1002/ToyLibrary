<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>관리자 회원 정보</title>
</head>
<body>
	<section class="">
	<div class="container">
		<div class="row">
			<div class="col-md-8 md-offset-3">
	
<!-- 			 <div class="login-content"> -->
			 <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <span class="jua" style="font-size:24pt; color:#774be9;">회원 정보</span>
<!--                            </div> -->
			
			
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									
									<th colspan="2"></th>

				</tr>

							</thead>
    
    <tbody>
    <tr>
    <tr>
      <td> &nbsp;&nbsp;&nbsp;<b>사용자 ID</b></td>
      <td>${resultClass.member_id}
      </td>
    </tr>
    <tr>
      <td> &nbsp;&nbsp;&nbsp;<b>비밀번호</b></td>
      <td>${resultClass.member_pw}
      </td>
      </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;<b>사용자 이름</b></td>
      <td>${resultClass.member_name}
      </td>
    </tr>
     <tr>
      <td>&nbsp;&nbsp;&nbsp;<b>E-Mail</b></td>
      <td>${resultClass.member_mail}
      </td>
    </tr>
  
    <tr>
      <td>&nbsp;&nbsp;&nbsp;<b>휴대전화 번호</b></td>
      <td align="left">${resultClass.member_phone}
      </td>
    </tr>
    <tr>
<tr> 
       <td>&nbsp;&nbsp;&nbsp;<b>우편번호</b></td>
       <td>${resultClass.member_zipcode}
          </tr>
    <tr> 
       <td>&nbsp;&nbsp;&nbsp;<b>주소</b></td>
       <td>${resultClass.member_addr1}
    </tr>
    <tr> 
       <td>&nbsp;&nbsp;&nbsp;<b>상세주소</b></td>
       <td>${resultClass.member_addr2}
    </tr>
    <tr>
      <td colspan="2" align="center" >
      
      
     <button class="btn" type="button" onclick="javascript:location.href='adminMemberDeleteAction.action?member_id='+
 		'<s:property value="resultClass.member_id" />'" class="btn_small3" style="background-color: #87df2d;">                                   
        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">삭제</span>
        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
        </button>
      &nbsp&nbsp&nbsp
           <button class="btn" type="button" onclick="javascript:location.href='adminMemberListForm.action'" class="btn_small3" style="background-color: #87df2d;">                                   
        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">취소</span>
        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
        </button>
      
      
          		

      </td>
    </tr>
  </tr>
  </tbody>
  </table> 





















<%-- <table width="650" border="1" cellspacing="0" cellpadding="3" align="center" >
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
  
  </table> --%>


</table>
</div>
</form>
</div>
</div>
</div>
</section>

</body>
</html>