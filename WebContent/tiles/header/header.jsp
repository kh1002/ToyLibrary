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
                            	 <a href="mainAction.action"><img src="/ToyLibrary/style/images/mainLogo0.png" height="50px"></a>
                            </div>	 
                            	 
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="user-value">
                                <ul>
                                    	<li><a href="mainAction.action"> <i class="fa fa-tag" aria-hidden="true"></i> Home</a> </li>
                                   	<s:if test="#session.member_id == null">
	                                    <li><a href="joinMain.action"> <i class="fa fa-user" aria-hidden="true"></i> Register</a> </li>
	                                    <li><a href="loginMain.action"><i class="fa fa-heart-o" aria-hidden="true"></i> Login</a></li>
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
                                <li style="margin-right : 100px;" class="dropdown"><a href="useIntroView.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용안내">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용안내</span></a>
                                    <div class="dropdown-content">
                                        <a href="useIntroView.action">소개</a>  
                                        <a href="useInfoView.action">이용 안내</a>
			                            <a href="useFacilityView.action">시설 현황</a>
			                            <a href="useLocationView.action">찾아오시는 길</a>
                                    </div>        
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="ToyListAction.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감목록">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감목록</span></a>
                                    <div class="dropdown-content">
                                        <a href="ToyListAction.action">장난감목록</a>  
                                        <a href="MyReservationListAction.action">장난감예약</a>  
                                    </div> 
                                </li>
                                <li style="margin-right : 100px;" class="dropdown">
                                    <a href="userEventListAction.action" class="dropbtn flip-animate"><span data-hover="아이꿈놀이나라">아이꿈놀이나라</span></a>
                                    <div class="dropdown-content">
                                        <a href="userEventListAction.action">행사목록</a>                                 
                                    </div>
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="userNoticeListAction.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;커뮤니티">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;커뮤니티</span></a>
                                    <div class="dropdown-content">
                                        <a href="userNoticeListAction.action">공지사항</a>  
                                        <a href="userQnaListAction.action">QNA</a>  
                                        <a href="userReviewListAction.action">이용 후기</a> 
                                        <a href="userFaqListAction.action">자주묻는질문</a> 
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
