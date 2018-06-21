<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>문의사항</title>
</head>
 <section>
    <div class="container">
        <div class="row">
            <div class="col-md-8 md-offset-3">


                <style type="text/css">
.jua {
    font-family: 'BM JUA', '배달의민족 주아', sans-serif;
}
</style>
                <span class="jua" style="font-size: 24pt; color: #774be9;">Q&A</span>



                <form>
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-left">번호</th>
                                    <th class="text-left">제목</th>
                                    <th class="text-left">글쓴이</th>
                                    <th class="text-left">날짜</th>
                                    <th class="text-left">조회</th>
                                </tr>
                            </thead>


                            <s:iterator value="list" status="stat">
                              <s:url id="viewURL" action="qnaViewAction">
                                <s:param name="qna_no">
                                    <s:property value="qna_no" />
                                </s:param>
                                <s:param name="currentPage">
                                    <s:property value="currentPage" />
                                </s:param>
                            </s:url>

                                <tr bgcolor="white" align="center">
                                    <td class="text-left cart-product-title"><a href="single-details.html">
                                    <s:property value="qna_no" /></a>
                                            </td>
                                    <td class="text-left"><s:if test="qna_re_level != 0">
                                        <c:forEach var = "i" begin = "${qna_re_level}" end = "0">&nbsp;</c:forEach>→
                                    </s:if> 
                                    <s:a href="%{viewURL}"><s:property value="qna_subject" /></s:a></td>
                                    <td class="text-left cart-product-title"><a href="single-details.html">
                                    <s:property value="qna_name" /></a>
                                    </td>
                                    <td class="text-left cart-product-title"><s:property value="qna_regdate" /></a>
                                    </td>
                                    <td class="text-left cart-product-title"><a href="single-details.html">
                                    <s:property value="qna_readcount"/></a>
                                    </td>
                            
                                </tr>

                            </s:iterator>



                            <s:if test="list.size() <= 0">
                                <tr align="center">
                                    <td colspan="5">등록된 게시물이 없습니다.</td>
                                </tr>
                            </s:if>

                            <tr align="center">
                                <td colspan="5"><s:property value="pagingHtml"
                                        escape="false" /></td>
                            </tr>

                            <tr align="right">
                                <td colspan="5">
                                    <input type="button" value="글쓰기" onclick="javascript:location.href='qnaWriteForm.action?currentPage=<s:property value="currentPage" />';" />
                                </td>
                            </tr>
                            
                            <tr align="center">
                                <td colspan="5">
                                    <form>
                                        <select name="searchNum">
                                        <option value="0">작성자</option>
                                        <option value="0">제목</option>
                                        <option value="1">내용</option>
                                        </select>
                                        <s:textfield name="searchKeyword" theme="simple" value=""
                                            maxlength="20" />
                                        <input name="submit" type="submit" value="검색">
                                    </form>
                                </td>
                            </tr>
                        </table>
                        <br> </br>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </section>

</table>
</body>
</html>











