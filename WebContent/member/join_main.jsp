<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>




<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>




<script language="javascript" >

function check() {
   var f = document.joinMain;
   
   if(f.member_id.value == ""){
      alert("아이디를 입력해주십시오.");
      f.member_id.focus();
      return false;
   }
   
   else if(f.member_id.value == "admin"){
	      alert("admin 아이디로 가입할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin1"){
	      alert("admin1 아이디로 가입할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin2"){
	      alert("admin2 아이디로 가입할 수 없습니다.");
	      f.member_id.focus();
	      return false;
	   }
   
   else if(f.member_id.value == "admin3"){
	      alert("admin3 아이디로 가입할 수 없습니다.");
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
      alert("주민등록번호를 입력해주십시오.");
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
	   var idUrl = 'http://localhost:8080/ToyLibrary/idCheck.action?member_id='+ id;
	   window.open(idUrl,"confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=603, height=236");
	   
}



</script>
</head>
<body>

			<form name="joinMain" action="joinMainInsert.action" method="post"  onsubmit="return check()">


                                    

        <section class="">
            <div class="container">
    			<div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <form>
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center"  colspan="2">회원가입</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    

                                    
                                    
                                        <tr class="text-left">
                                            <td>               
                                                <b>&nbsp;&nbsp;&nbsp;아이디</b>
                                            </td>
                                            <td>               
                                                <input type="text" name="member_id" id="member_id" size="13">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     
                                    
                                    <button class="btn" type="button" onclick="javascript:openIdCheck(this.form)" class="btn_small3" style="background-color: #87df2d;">                                   
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">중복 확인</span>
                                        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                                    </button>
                                   
                                            </td>
                                        </tr>
                                        <tr class="text-left">
                                            <td>               
                                                <b>&nbsp;&nbsp;&nbsp;비밀번호</b>
                                            </td>
                                            <td><input type=password name="member_pw" id="member_pw" size="14" maxlength="20">
                                            </td>
                                            </tr>
                                        <tr class="text-left">
                                            <td>               
                                                <b>&nbsp;&nbsp;&nbsp;비밀번호 확인</b>
                                            </td>
                                            <td><input type=password name="pwcheck" id="pwcheck" size="14" maxlength="20" onkeyup="pwCheck();"/>&nbsp;<span id="passwordCheckText"></span>
                                            </td>
                                            </tr>
                                         <tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;이름</b>      
                                         </td>
                                         <td><input type="text" name="member_name" size="14" maxlength="20">
                                         </td>
                                         </tr>
                                         <tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;휴대폰 번호</b>      
                                         </td>
                                         <td><input type="text" name="member_phone" size="14" maxlength="11">
                                         </td>
                                         </tr>
                          				<tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;주민번호</b>      
                                         </td>
                                         <td>
<input type="text" name="member_jumin1" size="8" maxlength="6">&nbsp;&nbsp;-&nbsp;&nbsp;
						<input type="text" name="member_jumin2" size="8" maxlength="7">
					</td>                                                                                                              
                                         <tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;이메일</b>      
                                         </td>
                                         <td><input type="text" name="member_mail" size="14" maxlength="20">
                                         </td>
                                         </tr>
                                         <tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;우편번호</b>      
                                         </td>
                                         <td>
<input type="text" id="member_zipcode" name="member_zipcode" size="10">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <button class="btn" type="button" onclick="javascript:postcode()" class="btn_small3" style="background-color: #87df2d;">                                   
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">우편번호 찾기</span>
                                        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                                    </button>
                                    
					</td>
					</tr>
					<tr class="text-left">
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;주소</b>      
                                         </td>
                                         <td alingn="center"><input type="text" id="member_addr1" name="member_addr1" size="35" maxlength="35">
                                         </td>
                                         </tr> 
                               
                                         <td>
                                         <b>&nbsp;&nbsp;&nbsp;상세 주소</b>      
                                         </td>
                                         <td><input type="text" id="member_addr2" name="member_addr2" size="35" maxlength="35">
                                         </td>
                                         </tr>                                                                              
                                            
    

                                         
                                                                                   
                                     
                                    </tbody>
                                </table>
 
                                </div>
                            </div>
                        </form>
                    </div>
                    
                                       <div class="col-md-6 col-md-offset-3">
                        <form>
                            <div class="cart-table table-responsive">
                                <table class="table">
                                
                                                                  <thead>
                                        <tr>
                                            <th class="text-center"  colspan="2">이용약관</th>
                                        </tr>
                                    </thead>
                                    <tbody>  
	<tr>
				<td align="center">		
								
				
					
					<p><p><p>
					<textarea rows="20" cols="70" readonly >
									
						 	  제1장 총칙







제1조 (목적) 이 약관은 서울특별시 (이하 "서울시"라 합니다) 홈페이지가 제공하는 통합회원 서비스(이하 "서비스"라 합니다)를 이용함에 있어 이용자와 서울시간의 권리·의무 및 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.


제2조 (약관의 효력 및 변경)
① 이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 이용자에게 공시하고, 이에 동의한 이용자가 서비스에 가입함으로써 효력이 발생합니다.
② 서울시는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지함으로써 이용자가 직접 확인할 수 있도록 할 것입니다.
③ 이용자는 변경된 약관에 동의하지 않으실 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.
④ 이용자가 이 약관의 내용에 동의하는 경우 서울시의 서비스 제공행위 및 이용자의 서비스 이용행위에는 이 약관이 우선적으로 적용될 것입니다. 이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 방송통신심의위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.


제3조 (용어의 정의)
① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 이용자 : 서비스에 접속하여 서울시가 제공하는 서비스를 받는 회원 및 비회원
2. 회원 : 서비스에 접속하여 이 약관에 동의하고, ID(고유번호)와 PASSWORD(비밀번호)를 발급 받아 문자 인증 등 확인 절차를 거친 자
3. 비회원 : 회원가입을 하지 않고 서울시가 제공하는 서비스를 이용하는 자
4. ID(고유번호) : 회원 식별과 회원의 서비스 이용을 위하여 이용자가 선정하고 서울시가 승인하는 영문자와 숫자의 조합
5. PASSWORD(비밀번호) : 회원의 정보 보호를 위해 이용자 자신이 설정한 문자와 숫자의 조합
6. 이용해지 : 서울시 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시
② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.






						 2장 서비스 이용계약







						
제4조 (이용계약의 성립) 이용계약은 이용자의 약관내용에 대한 동의와 이용자의 이용신청에 대한 KH의 승낙으로 성립합니다.
	
						
제5조 (이용신청) 이용신청은 서비스의 회원정보 화면에서 이용자가 KH에서 요구하는 가입신청 양식에 개인의 신상정보를 기록하는 방식으로 신청합니다.
	
						
제6조 (이용신청의 수락과 거절)
① KH는 제5조에서 정한 사항을 정확히 기재하여 이용신청을 하였을 경우 특별한 사정이 없는 한 서비스 이용신청을 수락합니다.
② KH는 다음 각 호에 해당하는 경우에 대하여는 그 신청에 대한 제한 사유가 해소될 때까지 일부 서비스 이용을 제한할 수 있습니다.
1. 내용이 허위(차명, 비실명, 주민등록번호 도용 등)인 것으로 판명되거나, 그러하다고 의심할만한 합리적인 사유가 발생할 경우
2. 기타 KH가 필요하다고 인정되는 경우
③ KH는 다음에 해당하는 경우에는 이용신청을 제한할 수 있습니다.
1. 본인의 실명으로 신청하지 않았을 때
2. 다른 사람의 명의를 사용하여 신청하였을 때
3. 신청서의 내용을 허위로 기재하였을 때
4. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청하였을 때
5. 기타 KH가 정한 이용신청 요건이 미비 되었을 때
						 
					</textarea>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="checkbox"> 개인정보 수집 및 이용에 동의합니다. 
				</td>
	                                
                                
                                
  		<tr>
			<td height="30" colspan="6" align="right">
			


        <button class="btn" type="button" onclick="return check();" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">회원가입</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>      

       
       <button class="btn" type="button" onclick="javascript:window.location='./mainAction.action'" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">취소</span>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>
			
			
			
			

			</td>
			</tr>
			</form>
			</tr>
		</table>
		</td>
	</tr>
	                              
                                
                          
                                </div>
                                </form>
                                

 
        </section>


























		
		

			

</body>
</html>
