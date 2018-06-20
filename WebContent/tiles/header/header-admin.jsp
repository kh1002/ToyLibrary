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
                            	<a href="mainAction2.action"><img src="/ToyLibrary/style/images/mainLogo0.png" height="50px"></a>
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
                                <li style="margin-right : 100px;" class="dropdown"><a href="AdminToyListAction.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장난감</span></a>
                                    <div class="dropdown-content">
                                        <a href="AdminToyListAction.action">장난감목록</a>  
                                        <a href="AdminRentListAction.action">대여관리</a>
			                            <a href="AdminReturnListAction.action">반납관리</a>
                                    </div>        
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="noticeListAction.action" class="flip-animate"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</span></a>
                                    <div class="dropdown-content">
                                        <a href="noticeListAction.action">공지사항</a>  
                                        <a href="qnaListAction.action">QNA</a>  
                                        <a href="reviewListAction.action">이용 후기</a> 
                                        <a href="faqListAction.action">자주묻는질문</a>
                                         <a href="eventListAction.action">행사</a> 
                                    </div> 
                                </li>
                                <li style="margin-right : 130px;" class="dropdown"><a href="adminMemberListForm.action" class="flip-animate"><span data-hover="회원관리">회원관리</span></a>
                                    <div class="dropdown-content">
                                        <a href="adminMemberListForm.action">회원목록</a>  
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



