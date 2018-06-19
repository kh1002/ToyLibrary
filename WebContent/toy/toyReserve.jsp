<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
</head>

<body>

<form action="ToyReserveAction.action" method="post" enctype="multipart/form-data">
    <s:hidden name="toy_id" value="%{toy_id}"/>
    <s:hidden name="zizum_no" value="%{zizum_no}"/>
   
    <section class="padding-top30">
            <div class="container">
                <div class="row">
                    <ul class="col-md-9 col-xs-12 blog-block">
                        <li class="blog-box">
                            <div class="in-stock">
                                <div class="blog-title">
                                    <h2><a href="blog-single.html">장난감 예약하기</a></h2>
                                </div>
                                <div class="blog-img">
                                    <img id="imglink" src="/ToyLibrary/image/<s:property value="TresultClass.toy_image"/>" width="500" height="400"/>
                                </div>
                                <div class="blog-desc">
                                    <div class="col-md-9 product-reservation">
                                        <div class="col-md-3" style="margin-left: 200px">
                                            <p>장난감 번호</p>
                                            <p>장난감 이름</p>
                                            <p>대여자 ID</p>
                                            <p>대여자 이름</p>
                                            <p>대여 지점</p>
                                        </div>
                                        <div class="col-md-3">
                                            <p><s:property value="TresultClass.toy_id"/></p>
                                            <p><s:property value="TresultClass.toy_name"/></p>
                                            <p><s:property value="%{mresultClass.member_id}"/></p>
                                            <p><s:property value="%{mresultClass.member_name}"/></p>
                                            <p><s:property value="TresultClass.zizum_no"/></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9 product-reservation" > 
                                <div class="site-btn">
                                	<button class="btn btn-2" type="submit"> 
										<div class="stock-btn">예약하기</div>
                                    </button>
                                   
                                    <button class="btn btn-2" type="button" onclick="javascript:window.location='./ToyListAction.action'"> 
										<div class="stock-btn">취소</div> 
                                    </button>
                                </div>     
                                </div>
                            </div>    
                        </li> 
                    </ul>      
                </div>
            </div>
        </section>


</form>
</body>

</html>