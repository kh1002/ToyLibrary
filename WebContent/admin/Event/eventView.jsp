<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>event 상세보기</title>
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
                                    <td><s:property value="resultClass.event_no "/></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>제목</b></td>
                                    <td><s:property value="resultClass.event_subject" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>내용</b></td>
                                    <td><s:property value="resultClass.event_content" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>날짜</b></td>
                                    <td><s:property value="%{resultClass.event_startday}" /> ~
                                          <s:property value="%{resultClass.event_endday}" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>장소</b></td>
                                    <td><s:property value="%{resultClass.event_position}" />

                                    </td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>이미지</b></td>
                                    <td><s:if test="resultClass.file_savname == null">
                                  			      이미지가 없습니다.
                                        </s:if>
                                        <s:else>
                                            <img id="imglink" src="/AdminBoard/image/<s:property value="file_names[0]"/> " width="150" border="0">
                                            <img id="imglink" src="/AdminBoard/image/<s:property value="file_names[1]"/> " width="150" border="0">
                                            <img id="imglink" src="/AdminBoard/image/<s:property value="file_names[2]"/> " width="150" border="0">
                                        </s:else></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
    </section>

   
      <tr>
      	<td align="right" colspan="2">
      		<s:url id="modifyURL" action="eventModifyForm">
      			<s:param name="faq_no">
      				<s:property value="faq_no"/>
      			</s:param>
      		</s:url>
      		
      		<s:url id="deleteURL" action="eventDeleteAction">
      			<s:param name="event_no">
      				<s:property value="event_no"/>
      			</s:param>
      		</s:url>
      		
      		<input name="list" type="button" value="수정" onclick="javascript:location.href='eventModifyForm.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="삭제" onclick="javascript:location.href='eventDeleteAction.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>
      		<input name="list" type="button" value="목록" onclick="javascript:location.href='eventListAction.action?currentPage=<s:property value="currentPage" />'" />
      		
      	</td>
      </tr>
      
	</table>
	
	
</body>
</html>