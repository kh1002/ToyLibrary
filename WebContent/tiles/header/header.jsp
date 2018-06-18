<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
</head>

<body id="myPage">
	<header id="home">
            <div class="top-header pink-bgclr">
                <div class="container">
                    <div class="row header-style">
                        <div class="col-md-6 col-sm-6 col-xs-12">

                            <div class="logo">
                            	 <a href="mainAction.action">장난감도서관</a>
                            </div>	 
                            	 
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="user-value">
                                <ul>
                                    	<li><a href="mainAction.action"> <i class="fa fa-tag" aria-hidden="true"></i> Home</a> </li>
                                   	<s:if test="#session.member_id == null">
	                                    <li><a href="joinMain.action"> <i class="fa fa-user" aria-hidden="true"></i> Register</a> </li>
	                                    <li><a href="login.action"><i class="fa fa-heart-o" aria-hidden="true"></i> Login</a></li>
                                	</s:if>
                                	<s:else>
	                                	<li><a href="MyReservationListAction.action"><i class="fa fa-user" aria-hidden="true"></i>MyPage</a></li>
	                                	<li><a href="logoutMain.action"><i class="fa fa-user" aria-hidden="true"></i>Logout (${session.member_id}님)</a></li>
                             		</s:else>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-header">
                <div class="main-nav">
                    <div class="container">
                        <nav class="collapse navbar-collapse">    
                            <ul class="nav navbar-nav navbar-right">
                                <li style="margin-right : 100px;" class="dropdown"><a href="useIntroView.action" class="flip-animate"><span data-hover="Use">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용안내</span></a>
                                    <div class="dropdown-content">
                                        <a href="useIntroView.action">이용안내</a>  
                                        <a href="#">찾아오시는길</a>  
                                        <a href="#">시설현황</a>  
                                    </div>        
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="ToyListAction.action" class="flip-animate"><span data-hover="Blog">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감목록</span></a>
                                    <div class="dropdown-content">
                                        <a href="ToyListAction.action">장난감목록</a>  
                                        <a href="#">장난감예약</a>  
                                    </div> 
                                </li>
                                <li style="margin-right : 100px;" class="dropdown">
                                    <a href="#" class="dropbtn flip-animate"><span data-hover="Pages">아이꿈놀이나라</span></a>
                                    <div class="dropdown-content">
                                        <a href="about.html">행사목록</a>
                                        <a href="404-page.html">404</a>                                       
                                    </div>
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="userFaqListAction.action" class="flip-animate"><span data-hover="Contact">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</span></a>
                                    <div class="dropdown-content">
                                        <a href="userFaqListAction.action">faq</a>  
                                        <a href="#">공지사항</a>  
                                        <a href="#">문의게시판</a> 
                                        <a href="#">자주묻는질문</a> 
                                    </div>      
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div><!--main-nav-->
            </div>
	        <div class="main-banner">
                <div class="banner-box">
                </div>
            </div>
	</header>
   
</body>
</html>
