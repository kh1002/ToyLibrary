<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

</head>

<body>

<s:url id = "viewURL" action="ToyReserveForm">
	<s:param name="toy_id">
		<s:property value="toy_id" />
	</s:param>
					
	<s:param name="zizum_no">
		<s:property value="zizum_no" />
	</s:param>
	
	<s:param name="currentPage">
		<s:property value="currentPage" />
	</s:param>
</s:url>


<section class="single-product padding-top100">
            <div class="container">
                <div class="row">   

                    <div class="col-sm-5 col-md-5 product_page-rigth mt-40">
                        <div class="product-gallery">
                            <ul class="thumbnails list-unstyled">
                                <li class="main-image-set"><a class="thumbnail"><img src="/ToyLibrary/image/<s:property value="resultClass.toy_image"/>" width="300" height="300"/></a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                    <div class="col-sm-4 col-md-5 product_page-left">
                        <div class="in-stock">
                            

                            <div class="pro-title" style="margin-left: 100px"><h2><s:property value="resultClass.toy_name"/></h2></div>
                            <ul class="rating" style="margin-left: 15px">
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>
                           
                            <div class="product-description">
                                <div class="col-sm-3">
                                    <p>장난감 번호</p>
                                    <p>장난감 이름</p>
                                    <p>장난감 구성</p>
                                    <p>사용연령</p>
                                    <p>상세설명</p>
                                </div>
                                <div class="col-sm-6">
                                    <p><s:property value="resultClass.toy_id"/></p>
                                    <p><s:property value="resultClass.toy_name"/></p>
                                    <p><s:property value="resultClass.toy_gusung"/></p>
                                    <p><s:property value="resultClass.toy_age"/></p>
                                    <p><s:property value="resultClass.toy_detail"/></p>
                                </div>
                            </div>
                            <div class="padding-top30"></div>
                            <div class="stock-btn" style="margin-left: 250px">
	                            <s:if test="(resultClass.state_code).equals('대여가능')">
	                            	<s:a href="%{viewURL}"><s:property value="resultClass.state_code"/></s:a>
	                            </s:if>
	                            <s:else>
									<s:property value="resultClass.state_code"/>
								</s:else>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        </section>



</body>

</html>


<!-- 실행은 http://localhost:8080/ToyLibrary/ToyDetailAction.action -->