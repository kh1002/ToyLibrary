<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>SS Library</title>
<style>
.body {
   height: 90px;
}


table.type09 {
    border-collapse: collapse;
    text-align: left;
    height: auto; width: 400px;

}

table.type09 thead th{
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    height: auto; width: 200px;
}
table.type09 thead td{
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    height: auto; width: 200px;
    background:#D5D5D5;
}
table.type09 tbody {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    height: auto; width: 400px;
}
</style>
<link href="style/css/bootstrap.min.css" rel="stylesheet">
<link href="style/css/carousel.css" rel="stylesheet">
</head>
<body>
   <table width="1000" cellpadding="0" cellspacing="0">
      <tr>
         <td colspan="2" height="10"></td>
      </tr>
      <tr>
         <td colspan="2" height="10"></td>
      </tr>
      <tr>
         <td colspan="2" height="10"></td>
      </tr>
   </table>
   <div id="cycle-wrapper">
      <div id="sliderholder-cycle">
         <img src="style/image/lib3.jpg" width="960" height="380" />
         <img src="style/image/lib2.jpg" width="960" height="380" />
         <img src="style/image/lib1.jpg" width="960" height="380" />
      </div>
      <div class="sliderdir">
         <a href="#"><span class="sliderprev">Prev</span></a> <a href="#"><span
            class="slidernext">Next</span></a>
      </div>
   </div>
   <!-- End Slider -->

   <!-- Begin Wrapper -->
   <div id="wrapper">
   
      <!-- Begin Intro -->
      <div class="intro">
         <h1>SS도서관에 오신 것을 환영합니다.</h1>
      </div>
      <!-- End Intro -->

      <!-- Begin About -->
<table>
   <tr>
   <td>
      <div id="about" align="center">
      <table class="type09">
             <thead>
             	<tr>
             	<th colspan="4" align="center">
             	<h2><b><strong>베스트셀러</strong></b></h2>
             	</th></tr>
               <tr align="center">
               <td colspan="2" class="td1"> <strong>도서 제목</strong> </td>
               <td class="td1"> <strong>저자</strong> </td>
               </tr>
            </thead>
            <tbody>
               <s:iterator value="list2" status="stat">
                  <s:if test="${session_admin_tp == 1 }">
                     <s:url id="viewURL" action="adminBookView">
                        <s:param name="book_no">
                           <s:property value="book_no" />
                        </s:param>
                        <s:param name="currentPage">
                           <s:property value="currentPage" />
                        </s:param>
                     </s:url>
                  </s:if>
                  <s:else>
                     <s:url id="viewURL" action="bookView">
                        <s:param name="book_no">
                           <s:property value="book_no" />
                        </s:param>
                        <s:param name="currentPage">
                           <s:property value="currentPage" />
                        </s:param>
                     </s:url>
                  </s:else>
                  <tr bgcolor="white" align="center">

                     <td colspan="2" align="center">&nbsp;<s:a href="%{viewURL}">
                           <s:property value="book_nm" />
                           <s:hidden value="${ book_no }"/>
                        </s:a></td>
                     <!--    <td align="center"><s:property value="member_id" /></td> -->
                     <td align="center"><s:property value="book_writer" /></td>
                  </tr>
                  </s:iterator>
               </tbody>
            </table>
         </div>
      </td>
      <td>
      <div id="about" align="center">
            <table class="type09">
             <thead>
             <tr align="center">
             	<th colspan="4" align="center">
             	<h2><b><strong>오늘의 공지</strong></b></h2>
             	</th>
             </tr>
            <tr align="center">
               <td colspan="2" class="td1"> <strong>공지사항</strong> </td>
               <td class="td1"> <strong>작성일</strong> </td>
               </tr>
               </thead>
               <tbody>
               <s:iterator value="list" status="stat">
                  <s:url id="viewURL" action="boardView">
                     <s:param name="article_no">
                        <s:property value="article_no" />
                     </s:param>
                     <s:param name="currentPage">
                        <s:property value="currentPage" />
                     </s:param>
                  </s:url>

                  <tr bgcolor="white" align="center">

                     <td colspan="2" align="left">&nbsp;<s:a href="%{viewURL}">
                           <s:property value="title" />
                        </s:a></td>
                     <!--    <td align="center"><s:property value="member_id" /></td> -->
                     <td align="center"><s:property value="create_dt" /></td>
                  </tr>
               </s:iterator>
               </tbody>
               <s:if test="list.size() <= 0">

                  <tr bgcolor="#FFFFFF" align="center">
                     <td colspan="5">등록된 게시물이 없습니다.</td>
                  </tr>
               </s:if>
            </table>
         </div>
         </td>
         <!-- End About -->
         </tr>
         </table>
      </div>

      <!-- End Wrapper -->
      <div class="clearfix"></div>
      <div class="push"></div>
   
   
</body>
</html>