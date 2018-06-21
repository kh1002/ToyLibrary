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
	<span class="jua" style="font-size:24pt; color:#774be9;">&nbsp;&nbsp;이용 후기</span>
     <section class="padding-top30">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <form>
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">번호</th>
                                    <th class="text-left">제목</th>
                                    <th class="text-left">작성자</th>
                                    <th class="text-left">날짜</th>
                                    <th class="text-center">조회</th>

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
                                        <td class="text-center"><s:property value="review_no" /></td>
                                        <td class="text-left cart-product-title">
                                      		<s:a href="%{viewURL}"><s:property value="review_subject" />(<s:property value="commentCountList[#stat.index]"/>)</s:a>
                                        </td>
                                        <td class="text-left"><s:property value="review_name" /></td>
                                        <td class="text-left"><s:property value="review_regdate" /></td>
                                        <td class="text-center"><s:property value="review_readcount" /></td>
                                    </tr>
                                </tbody>
                            </s:iterator>
                            
							<s:if test="list.size() <= 0">
								<tr>
									<td colspan="5">등록된 게시물이 없습니다</td>
								</tr>
							</s:if>
                        </table>
                    </div>
                </form>
            </div>
        </div>

    </div>
    </section>


<table>
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>

  	<div class="site-btn" style="margin-left: 780px;">         
		<button class="btn btn-1" type="button" onclick="javascript:window.location='./userReviewWriteForm.action'">                                   
			<span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">글쓰기</span>
			<span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
		</button>
	</div>
	
	
	<div class="s" style="margin-top: 50px;">
	<tr>
		<td>
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
</div>
</table>



</body>
</html>























