<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>문의사항 상세보기</title>
<script type="text/javascript">
	function open_win_noresizable(url,name)
	{
		var oWin = window.open(url, name, "scrollbars=qna_no, status=qna_no, resizable=qna_no, width=300, height=150");
		
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
                                            <th class="text-center"  colspan="2">상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-left">
                                            <td>               
                                                <b>번호</b>
                                            </td>
                                            <td>               
                                           <s:property value="resultClass.qna_no" />
                                            </td>
                                        </tr>

                                        <tr class="text-left">
                                            <td>               
                                                <b>제목</b>
                                            </td>
                                            <td>               
                                            <s:property value="resultClass.qna_subject" />
                                            </td>
                                        </tr>

                                         <tr class="text-left">
                                            <td>               
                                                <b>작성자</b>
                                            </td>
                                            <td>               
                                           <s:property value="resultClass.qna_name" />
                                            </td>
                                        </tr>

                                         <tr class="text-left">
                                            <td>               
                                                <b>내용</b>
                                            </td>
                                            <td>               
                                           ${resultClass.qna_content }
                                            </td>
                                        </tr>

                                        <tr class="text-left">
                                            <td>               
                                                <b>조회수</b>
                                            </td>
                                            <td>               
                                           <s:property value="resultClass.qna_readcount" />
                                            </td>
                                        </tr>

                                         <tr class="text-left">
                                            <td>               
                                                <b>등록날짜</b>
                                            </td>
                                            <td>               
                                            <s:property value="resultClass.qna_regdate" />
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>                    
        </section>
           
		<tr>
			<td colspan="2" align="right">
				<s:url id="modifyURL" action="userQnaModifyForm">
					<s:param name="qna_no">
						<s:property value="qna_no" />
					</s:param>
				</s:url>
				<s:url id="deleteURL" action="userQnaDeleteAction">
					<s:param name="qna_no">
						<s:property value="qna_no" />
					</s:param>
				</s:url>
			</td>
		
				<div class="a" style="margin-left: 500px;">
			<td align="right">			
				<button class="btn" type="button" 
				onclick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','modify')"
				class="btn_small3" style="background-color: #87df2d;">
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">수정</span>
				<span class="round" style="background-color: #35beea;"><i
					class="fa fa-chevron-right" style="color: white;"></i></span>
				</button>
				
				<button class="btn" type="button"
				onclick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','delete')"
				class="btn_small3" style="background-color: #87df2d;">
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">삭제</span>
				<span class="round" style="background-color: #35beea;"><i
					class="fa fa-chevron-right" style="color: white;"></i></span>
				</button>
						
				<button class="btn" type="button"
				onclick="javascript:location.href='userQnaListAction.action?currentPage=<s:property value="currentPage" />'"
				class="btn_small3" style="background-color: #87df2d;">
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">목록</span>
				<span class="round" style="background-color: #35beea;"><i
					class="fa fa-chevron-right" style="color: white;"></i></span>
				</button>
				
				
				<%-- <input name="list" type="button" value="수정" onClick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','modify')">
				<input name="list" type="button" value="삭제" onClick="javascript:open_win_noresizable('userQnaCheckForm.action?qna_no=<s:property value="resultClass.qna_no" />&currentPage=<s:property value="currentPage" />','delete')">
				<input name="list" type="button" value="목록" onClick="javascript:location.href='userQnaListAction.action?currentPage=<s:property value="currentPage" />'"> --%>
			</td>
			</div>
			
		</tr>
	</table>
</body>
</html>















