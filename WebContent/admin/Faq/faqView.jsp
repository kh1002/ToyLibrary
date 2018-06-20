<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>자주묻는질문 상세보기</title>
</head>
<body>
	 <section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <form>
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center" colspan="2">상세보기</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="text-left">
                                    <td><b>번호</b></td>
                                    <td><s:property value="resultClass.faq_no "/></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>제목</b></td>
                                    <td><s:property value="resultClass.faq_subject" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>내용</b></td>
                                    <td><s:property value="resultClass.faq_content" /></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
    </section>

   
      <tr>
      	<td align="right" colspan="2">
      		<s:url id="modifyURL" action="faqModifyForm">
      			<s:param name="faq_no">
      				<s:property value="faq_no"/>
      			</s:param>
      		</s:url>
      		
      		<s:url id="deleteURL" action="faqDeleteAction">
      			<s:param name="faq_no">
      				<s:property value="faq_no"/>
      			</s:param>
      		</s:url>
      		
      		<input name="list" type="button" value="수정" onclick="javascript:location.href='faqModifyForm.action?faq_no=<s:property value="resultClass.faq_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="삭제" onclick="javascript:location.href='faqDeleteAction.action?faq_no=<s:property value="resultClass.faq_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="목록" onclick="javascript:location.href='faqListAction.action?currentPage=<s:property value="currentPage" />'" />
      		
      	</td>
      </tr>
      
	</table>
	
	
</body>
</html>