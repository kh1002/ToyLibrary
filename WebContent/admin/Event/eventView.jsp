<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>상세보기</title>

<script type="text/javascript">
	function open_win_noresizable(url, name) {
		var oWin = window
				.open(url, name,
						"scrollbars=no, status=no, resizable=no, width=300, height=150");
	}
</script>
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
                                    <td><b>행사장소</b></td>
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
      		<tr>
				<td align="right" colspan="2">	
				<div class="site-btn" style="margin-left: 450px;">	
      				  <button class="btn btn-1" type="button" onclick="javascript:location.href='eventModifyForm.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>                                   
					       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">수정</span>
					       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
					   </button>
					   <button class="btn btn-1" type="button" onclick="javascript:location.href='eventDeleteAction.action?event_no=<s:property value="resultClass.event_no"/>&currentPage=<s:property value="currentPage"/>'"/>                                   
					       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">삭제</span>
					       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
					   </button>
					   <button class="btn btn-1" type="button" onclick="javascript:location.href='eventListAction.action?currentPage=<s:property value="currentPage" />'" />                                   
					       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">목록</span>
					       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
					   </button>
					</div>
      			</td>
			</tr>
      		
      	</td>
      </tr>
      
	</table>
	
	
</body>
</html>