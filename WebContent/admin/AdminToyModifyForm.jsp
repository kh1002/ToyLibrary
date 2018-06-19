<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 장난감 수정하기</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<!-- 텍스트 장난감등록을 보여주는 코드 -->

<form action="AdminToyModifyAction.action" method="post" enctype="multipart/form-data">
<s:hidden name="toy_id" value="%{resultClass.toy_id}"/>
       <section class="padding-top30">
            <div class="container">
    			<div class="row">
                    <div class="col-md-9">
                        <form>
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center"  colspan="2">장난감 수정</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-left">
                                            <td><b>장난감이름</b></td>
                                            <td><s:textfield name="toy_name" theme="simple" value="%{resultClass.toy_name}" cssStyle="width:100px" maxlength="20"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>장난감구성</b></td>
                                            <td><s:textfield name="toy_gusung" theme="simple" value="%{resultClass.toy_gusung}" cssStyle="width:100px" maxlength="20"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <s:select name="toy_age" list="#{'1개월~6개월':'1개월~6개월','7개월~12개월':'7개월~12개월','13개월~18개월':'13개월~18개월','19개월~24개월':'19개월~24개월','25개월~36개월':'25개월~36개월','37개월~48개월':'37개월~48개월'}" 
												value="%{resultClass.toy_age}">
											</s:select>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>장난감설명</b></td>
                                            <td><s:textarea name="toy_detail" theme="simple" value="%{resultClass.toy_detail}"  cols="50" rows="5"/></td>
                                        </tr>
                                        <tr class="text-left">
                                            <td><b>제품이미지</b></td>
                                            <td>
                                            <input type="file" name="upload"/>
												<s:if test="resultClass.toy_image != NULL">
													&nbsp; * 
													<s:property value="resultClass.toy_image"/>
													파일이 등록되어 있어 새로운파일 등록시 수정됩니다.
												</s:if>
												<s:else>
													등록되어 있는 파일이 없습니다.
												</s:else>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
 
                                </div>
                        	</form>
                        </div>
                    </div>
                </div>    
        <div class="col-md-6 col-md-offset-3">
                              
	  		<tr>
				<td height="30" colspan="6" align="right">
				
				
				
				<div class="site-btn">
					<button class="btn btn-1" type="submit">                                 
						<span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">수정하기</span>
						<span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
					</button>
					<button class="btn btn-1" type="reset" style="background-color: #87df2d;">                                   
				       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">다시쓰기</span>
				       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
			      	</button>				    
			       <button class="btn btn-1" type="button" onclick="javascript:window.location='./AdminToyListAction.action'" style="background-color: #87df2d;">                                   
				       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">취소</span>
				       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
			       </button>
				</div>
				</td>
			</tr>
		
    </div>
	</section>
</form>	
</body>	

</html>

