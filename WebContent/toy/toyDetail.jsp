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


  <section class="single-product">
            <div class="container">
                <div class="row">   

                    <div class="col-sm-5 col-md-5 product_page-rigth mt-40">
                        <div class="product-gallery">
                            <ul class="thumbnails list-unstyled">
                                <li class="main-image-set"><a class="thumbnail"><img src="/ToyLibrary/image/<s:property value="resultClass.toy_image"/>" /></a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                    <div class="col-sm-4 col-md-5 product_page-left">
                        <div class="in-stock">
                            

                            <div class="pro-title" style="margin-left: 100px">
                            <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>


                            
                             <span class="jua" style="font-size:25pt; color:#ff3366;">
                            <s:property value="resultClass.toy_name"/></span>
                            
                            </div>
                            <ul class="rating" style="margin-left: 15px">
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>

<%-- <style>
.product-title
{
    font-size: 16px;
    line-height: 20px;
    font-weight: : bold;
    margin: 15px 0 25px;
     
   

}


</style>
 --%>
 
<style> 
 p {
    display: block;
    -webkit-margin-before: 2em;
    -webkit-margin-after: 2em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}
</style>
                           
                            <div class="product-description">
                                <div class="col-sm-5">
                                
                                    <p><span style="font-size: 16px; color:#ff3366;"><b>장난감 번호</b></p></span>
                                    <p><span style="font-size: 16px; color:#ff3366;"><b>장난감 구성</b></p></span>
                                    <p><span style="font-size: 16px; color:#ff3366;"><b>사용 연령</b></p></span>
                                    <p><span style="font-size: 16px; color:#ff3366;"><b>상세 설명</b></p></span>
                                    <p><span style="font-size: 16px; color:#ff3366;"><b>장난감 번호</b></p></span>

                                </div>
                                <div class="col-sm-5">
                                    <p><span style="font-size: 16px;"><s:property value="resultClass.toy_id"/></p></span>
                                    <p><span style="font-size: 16px"><s:property value="resultClass.toy_name"/></p></span>
                                    <p><span style="font-size: 16px"><s:property value="resultClass.toy_gusung"/></p></span>
                                    <p><span style="font-size: 16px"><s:property value="resultClass.toy_age"/></p></span>
                                    <p><span style="font-size: 16px"><s:property value="resultClass.toy_detail"/></p></span>
                                </div>
                            </div>
                            <div class="padding-top30"></div>
                            
                           <div class="btn_test" style="margin-left: 250px;">
                            
                            <button class="btn" type="link" href="%{viewURL}" value="resultClass.state_code" style="background-color: #87df2d;">                                   
       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">
       	                            <s:if test="(resultClass.state_code).equals('대여가능')">
	                            	<s:a href="%{viewURL}"><s:property value="resultClass.state_code"/></s:a>
	                            </s:if>
	                            <s:else>
									<s:property value="resultClass.state_code"/>
								</s:else>
       <span class="round" style="background-color: #35beea;"><i class="fa fa-chevron-right" style="color:white;"></i></span>
       </button>  </div> 
                            
                            
                            
                            
                            
<%--                              <div class="stock-btn" style="margin-top: 100px; margin-left: 250px">
	                            <s:if test="(resultClass.state_code).equals('대여가능')">
	                            	<s:a href="%{viewURL}"><s:property value="resultClass.state_code"/></s:a>
	                            </s:if>
	                            <s:else>
									<s:property value="resultClass.state_code"/>
								</s:else>
                            </div>  --%>
                        </div>
                    </div>
                </div>
            </div>    
        </section>



</body>

</html>


<!-- 실행은 http://localhost:8080/ToyLibrary/ToyDetailAction.action -->
