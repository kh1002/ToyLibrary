<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>


<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<link rel="stylesheet" media="all" href="style/type/folks.css" />

<script type="text/javascript" src="style/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="style/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="style/js/scripts.js"></script>
<script type="text/javascript">
   $(function() {
      if ($('#sliderholder-cycle').length) {
         // timeouts per slide (in seconds) 
         var timeouts = [ 150, 390, 25 ];
         function calculateTimeout(currElement, nextElement, opts, isForward) {
            var index = opts.currSlide;
            return timeouts[index] * 1000;
         }
         jQuery('#sliderholder-cycle').cycle({
            fx : 'fade',
            pager : '.slidernav',
            prev : '.sliderprev',
            next : '.slidernext',
            speed : 1000,
            timeoutFn : calculateTimeout,
            pagerEvent : 'click',
            pauseOnPagerHover : true,
            cleartype : 1
         });
         jQuery('#sliderholder-cycle').css("display", "block");
         jQuery('.slidernav').css("display", "block");

      }
   });

   function idCheck() {
      
       var a = document.getElementsByName("memberID").value;
       
       if (a == null) {
         alert("로그인을 해주세요.");
         return false;
      }
    }
</script>
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

   <div id="container">
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
                           <a href="mainAction.action">home</a> 
                           <s:if test="${ session_id == null }">
                                 <a href="joinMain.action">회원가입</a>
                                 <a href="login.action">로그인</a>
                              </s:if> 
                              <s:else>
                                 <s:if test="${ session_admin_tp == 1 }">
                                    <a href="mainAction2.action">관리자페이지</a>
                                 </s:if>
                                 <s:else>
                                    <a href="myPage.action">마이페이지</a>
                                 </s:else>
                                 <a href="logout.action">로그아웃 (${ session_id })</a>
                              </s:else>
                           </td>
                        </tr>
                     </table>
                     <ul>
                       <!--  <li><a href="mainAction.action" class="selected">Home</a></li> -->
                        <li><a href="useIntroView.action">이용 안내</a>
                           <ul>
                              <li><a href="useIntroView.action">소개</a></li>
                              <li><a href="useInfoView.action">이용 안내</a></li>
                              <li><a href="useFacilityView.action">시설 현황</a></li>
                              <li><a href="useLocationView.action">찾아오시는 길</a></li>
                           </ul></li>
                        <li><a href="ToyListAction.action">장난감목록</a>
                           <ul>
                              <li><a href="ToyListAction.action">장난감목록</a></li>
                           </ul></li>
                        <li><a href="noticeListAction.action">아이꿈 놀이나라</a>
                           <ul>
                              <li><a href="noticeListAction.action">행사</a></li>
                           </ul></li>
                        <li><a href="userNoticeListAction.action">커뮤니티</a>
                           <ul>
                              <li><a href="userNoticeListAction.action">공지사항</a></li>
                              <li><a href="qnaListAction.action">QNA</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">고객 문의</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">자주 묻는 질문</a></li> 
                           </ul></li>
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