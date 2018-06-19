<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이용후기</title>
<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
</head>

<body>
	<span class="jua" style="font-size:24pt; color:#00BFFF;">이&nbsp;용&nbsp;후&nbsp;기</span>
     <section class="padding-top50">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <form>
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center"></th>
                                    <th class="text-left">번호</th>
                                    <th class="text-left">제목</th>
                                    <th class="text-left">작성자</th>
                                    <th class="text-left">날짜</th>
                                    <th class="text-left">조회</th>

                                </tr>
                            </thead>
                            <s:iterator value="list" status="stat">
                                <s:url id="viewURL" action="userReviewViewAction">
                                <s:param name="review_no">
                                    <s:property value="review_no" />
                                </s:param>
                                <s:param name="currentPage">
                                    <s:property value="currentPage" />
                                </s:param>
                            </s:url>
                                <tbody>
                                    <tr>
                                        <td class="text-left"></td>

                                        
                                        <td class="text-left"><br>
                                       <s:property value="review_no" /></td>

                                        <td class="text-left cart-product-title"><br>
                                       <s:a href="%{viewURL}"><s:property value="review_subject" /></s:a>
                                            <hr></td>
                                        <td class="text-left"><br>
                                        <s:property value="review_name" /></td>

                                        <td class="text-left"><br>
                                       <s:property value="review_regdate" /></td>


                                        <td class="text-left"><br>
                                        <s:property value="review_readcount" /></td>

                                        <td class="text-left"><br>
                                        <div style="max-width: 200px;" class="input-group btn-block">


                                            </div></td>

                                    </tr>
                                </tbody>
                            </s:iterator>

                        </table>
                    </div>
                </form>
            </div>
        </div>

    </div>
    </section>

	<s:if test="list.size() <= 0">
		<tr>
			<td colspan="5" align="center">등록된 게시물이 없습니다</td>
		</tr>
	</s:if>

	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>

	<tr align="right">
		<td colspan="5">
			<input type="button" value="글쓰기" onClick="javascript:location.href='userReviewWriteForm.action?currentPage=<s:property value="currentPage" />';" />
		</td>
	</tr>

	<tr align="center">
		<td colspan="5">
			<form>
				<select name="searchNum" >
					<option value="0">작성자</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
				</select>
				<s:textfield name="searchKeyword" theme="simple" value="" maxlength="20" />
				<input name="submit" type="submit" value="검색">
			</form>
		</td>
	</tr>
</table>
</body>
</html>











