<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 대여관리 상세보기</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<form action="AdminRentDetailStateAction.action" method="post" enctype="multipart/form-data">
<!-- 숨겨서 보내는 데이터?? -->
<s:hidden name="toy_id" value="%{resultClass.toy_id}"/>
	
<section class="padding-top30">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center"  colspan="2">장난감 대여관리</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-left">
                                            <td><b>장난감번호</b></td>
                                            <td><s:property value="resultClass.toy_id"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>장난감이름</b></td>
                                            <td><s:property value="resultClass.toy_name"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>대여자</b></td>
                                            <td><s:property value="resultClass.member_name"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>대여지점</b></td>
                                            <td><s:property value="resultClass.zizum_name"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>예약일</b></td>
                                            <td><s:property value="resultClass.reserve_date"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>대여가능일</b></td>
                                            <td><s:property value="resultClass.return_date"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <!-- <td><b>대여정보수정</b></td> -->
                                            <s:select name="state_code" list="#{'예약중':'예약중','대여중':'대여'}" 
												value="%{resultClass.state_code}">
											</s:select>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                </div>
            </div>    
        <div class="col-md-6 col-md-offset-3">
            <div class="site-btn">
                <button class="btn btn-1" type="submit">                                 
                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">확인</span>
                    <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
                </button>                 
                <button class="btn btn-1" type="button" onclick="javascript:window.location='./AdminRentListAction.action'" style="background-color: #87df2d;">                                   
                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">취소</span>
                    <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                </button>
            </div>
        </div>
       
    </section>
    
</form> 
</body>

</html>