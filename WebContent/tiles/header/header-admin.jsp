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
                            	 <a href="mainAction2.action">장난감도서관</a>
                            </div>	 
                            	 
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="user-value">
                                <ul>
                             		<li><a href="mainAction2.action"><i class="fa fa-tag" aria-hidden="true"></i> Home</a> </li>
                             		<li><a href="logoutMain.action"><i class="fa fa-heart-o" aria-hidden="true"></i> 로그아웃 (${session.member_id}님)</a></li>
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
                                <li style="margin-right : 100px;" class="dropdown"><a href="AdminToyListAction.action" class="flip-animate"><span data-hover="장난감">장난감</span></a>
                                    <div class="dropdown-content">
                                        <a href="useIntroView.action">소개</a>  
                                        <a href="useInfoView.action">이용 안내</a>
			                            <a href="useFacilityView.action">시설 현황</a>
			                            <a href="useLocationView.action">찾아오시는 길</a>
                                    </div>        
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="noticeListAction.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감목록">게시판</span></a>
                                    <div class="dropdown-content">
                                        <a href="ToyListAction.action">장난감목록</a>  
                                        <a href="MyReservationListAction.action">장난감예약</a>  
                                    </div> 
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="adminMemberListForm.action" class="flip-animate"><span data-hover="회원관리">회원관리</span></a>
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



