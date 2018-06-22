<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>자주묻는질문 상세보기</title>
</head>
<body>
     <section class="padding-top30">
            <div class="container">           
                <div class="row">
                    <div class="col-md-9 col-sm-6 col-xs-12">
                        <form>
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center"  colspan="2">상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-left">
                                            <td>               
                                                <b>번호</b>
                                            </td>
                                            <td>               
                                            <s:property value="resultClass.faq_no "/>
                                            </td>
                                        </tr>

                                        <tr class="text-left">
                                            <td>               
                                                <b>제목</b>
                                            </td>
                                            <td>               
                                             <s:property value="resultClass.faq_subject" />
                                            </td>
                                        </tr>

                                         <tr class="text-left">
                                            <td>               
                                                <b>내용</b>
                                            </td>
                                            <td>               
                                            <s:property value="resultClass.faq_content" />
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>                    
        </section> 
       <table style="margin-left: 750px;">   
	      <tr>
	      	<td align="right" colspan="2">
	      		<button class="btn" type="button" 
					onclick="javascript:location.href='userFaqListAction.action?currentPage=<s:property value="currentPage" />'"
					class="btn_small3" style="background-color: #87df2d;">
					<span class="txt"
						style="color: #fff; font-family: sans-serif; font-weight: bold;">목록</span>
					<span class="round" style="background-color: #35beea;"><i
						class="fa fa-chevron-right" style="color: white;"></i></span>
				</button>
	      	</td>
	      </tr>
		</table>
	
	
</body>
</html>