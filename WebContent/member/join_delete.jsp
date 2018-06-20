<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원탈퇴</title>
<script>
function check() {
	var ch = document.joinDelete;
	
	if(ch.member_id.value == ""){
		alert("아이디를 입력해주십시오.");
		ch.member_id.focus();
		return false;
	}
	else if(ch.member_pw.value == ""){
		alert("비밀번호를 입력해주십시오.");
		ch.member_pw.focus();
		return false;
	}
	
	else {
		ch.action = 'joinDelete.action';
		ch.submit();	
	}
	
}

</script>
</head>
<body>


			<form name="joinDelete" id="joinform" method="post" onsubmit="return check()">
			
	<section class="">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
<!-- 			 <div class="login-content"> -->
			 <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>

                           <span class="jua" style="font-size:24pt; color:#774be9;">회원 탈퇴</span>
<!--                            </div> -->
			
			
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center" colspan="2" style="color: #ff3366;">가</th>


								</tr>
							</thead>
                                    <tbody>
                                    

                                    
                                    
                                        <tr class="text-left">
                                            <td>               
                                                <b>아이디</b>
                                            </td>
                                            <td>               
                                                <input type="text" name="member_id" id="member_id" size="13">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     

                                   
                                            </td>
                                        </tr>
                                        <tr class="text-left">
                                            <td>               
                                                <b>비밀번호</b>
                                            </td>
                                            <td><input type=password name="member_pw" id="member_pw" size="14" maxlength="20">
                                            </td>
                                            </tr>
                                                   
                                 				<tr>
					<td height="30" colspan="6" align="right">

                                    <button class="btn" type="submit" onclick="return check();" class="btn_small3" style="background-color: #87df2d;">                                   
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">회원 탈퇴</span>
                                        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                                    </button>
                                    
                        <button class="btn" type="button" onclick="javascript:location.href='myMemberModify.action" class="btn_small3" style="background-color: #87df2d;">                                   
                                        <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">취소</span>
                                        <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                                    </button>                          
                                    





					</td>
			</tr>           
    

                                         
                                                                                   
                                     
                                    </tbody>
                                </table>
 
                                </div>
                            </div>
                        </form>
                    </div>









								</tbody>
							
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>


			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			

</body>
</html>