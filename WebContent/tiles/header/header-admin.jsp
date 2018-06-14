<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>

</head>

<style>
#tabmenu{ position:relative; height:29px; background:url(images/tab_menu.gif) repeat-x 0 100%; font-family:'돋움',dotum; font-size:12px }
#tabmenu ul,#tabmenu ul li{margin:0;padding:0}
#tabmenu ul li{list-style:none}
#tabmenu ul li,#tabmenu ul li a{background:url(images/bg_tab2_off.gif) no-repeat}
#tabmenu ul li{float:left;margin-right:-1px;line-height:26px}
#tabmenu ul li a{display:inline-block;padding:2px 16px 1px;_padding:3px 16px 0;background-position: 100% 0;font-weight:bold;color:#666;cursor:pointer;text-decoration:none !important}
#tabmenu ul li a:hover{color:#000}
#tabmenu ul li.on,#tabmenu ul li.on a{background-image:url(images/bg_tab2_on.gif)}
#tabmenu ul li.on a{color:#3376b8}

#tabcontent1{}
#tabcontent2{}
</style>

<body>
   <div id="tabmenu">
      <!-- Begin Header Wrapper -->
      <div id="page-top">
         <div id="header-wrapper">
            <!-- Begin Header -->
            <div id="header">
               <div id="logo">
                  <a href="mainAction.action"><img src="./style/image/logo.png" alt="logo img" width="200" height="60" /></a>
               </div>
               <!-- Logo -->
               <!-- Begin Menu -->
               <div id="menu-wrapper">
                  <div id="smoothmenu1" class="ddsmoothmenu">

                     <table width="100%" height="100%" cellpadding="0" cellspacing="0"
                        border="0">
                        <tr>
                           <td align="left">
                              <!--  <div id="logo"><a href="mainAction.action"><img src="./style/image/logo.jpg" alt="logo img"  /></a></div> -->
 							</td>
 					
                           <td align="right">
                           		<a href="mainAction2.action">home</a> 
                           		<a href="admin.action">관리자페이지</a>
	                          	<a href="logoutMain.action">로그아웃 ${session.member_id}님</a>
                           </td>

                        </tr>
                     </table>

                     <ul>
                     
                        <li><a href="AdminToyListAction.action">장난감</a>
                         <!--  <ul>
                              <li><a href="bookSearchForm.action">장난감목록</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">대여관리</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">반납관리</a></li>
                           </ul>  -->
                        </li>
                        
                        <li><a href="noticeListAction.action">게시판</a>
                           <!-- <ul>
                              <li><a href="noticeList.action">공지사항</a></li>
                              <li><a href="boardListFree.action">문의게시판</a></li>
                              <li><a href="boardListQna.action">FAQ</a></li>
                              <li><a href="boardListBookOrder.action">행사일정</a></li>
                           </ul> -->
                        </li>
                        
                        <li><a href="introduce.action">회원관리</a>
                          <!--  <ul>
                              <li><a href="history.action">회원목록</a></li>
                           </ul> -->
                        </li>
                     </ul>
       
                  </div>
               </div>
               <!-- End Menu -->
            </div>
            <!-- End Header -->
         </div>
      </div>
   </div>
   <div class="line"></div>
</body>
</html>









                              	
                              	
                              	
                        <%--    
                        	눈에는 잘 보이지만 중복되는게 너무 많은 코드   	
				          <div class="fr">
								<ul class="clr gnb">
									<s:if test="#session.session_ID == null ">
										<li><a href="javascript:location.href='Login.action'">로그인</a></li>
										<li><a href="javascript:location.href='UserAddForm.action'">회원가입</a></li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">고객센터</a></li>
										<li><a href="javascript:location.href='NOTICE_listAction.action'">공지사항</a></li>
										
									</s:if>
									<s:ifelse test="${session.admin_id != null }">
										<li>${session_admin_id}님환영합니다.</li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">home</a></li>
										<li><a href="javascript:location.href='Logout.action'">로그아웃</a></li>
									</s:ifelse>
									
									<s:else>
										<li>${session_ID}님환영합니다.</li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">고객센터</a></li>
										<li><a href="javascript:location.href='NOTICE_listAction.action'">공지사항</a></li>
										<li><a href="javascript:location.href='Logout.action'">로그아웃</a></li>
									
									</s:else>
				
								</ul>
							</div> --%>
                              	
                              	