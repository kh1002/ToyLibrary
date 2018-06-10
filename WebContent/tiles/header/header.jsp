<%@ page contentType="text/html; charset=euc-kr"%>


<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>

</head>

<style>
#tabmenu{ position:relative; height:29px; background:url(images/tab_menu.gif) repeat-x 0 100%; font-family:'����',dotum; font-size:12px }
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
                           		<a href="mainAction.action">home</a> 
                           		<s:if test="${ session_id == null }">
                                	 <a href="loginForm.action">�α���</a>
                             	</s:if> 
                             	 <s:else>
	                                 <s:if test="${ session_admin_tp == 1 }">
	                                    <a href="admin.action">������������</a>
	                                 </s:if>
	                                 <s:else>
	                                    <a href="myPage.action">����������</a>
	                                 </s:else>
	                                 <a href="logout.action">�α׾ƿ� (${ session_id })</a>
                              	</s:else>
                           </td>

                        </tr>
                     </table>

                     <ul>
                     
                        <li><a href="AdminToyListAction.action">�峭��</a>
                         <!--  <ul>
                              <li><a href="bookSearchForm.action">�峭�����</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">�뿩����</a></li>
                              <li><a href="bookSearch.action?searchNum=0&searchKeyword=">�ݳ�����</a></li>
                           </ul>  -->
                        </li>
                        
                        <li><a href="AdminNoticeBoardList.action">�Խ���</a>
                           <!-- <ul>
                              <li><a href="noticeList.action">��������</a></li>
                              <li><a href="boardListFree.action">���ǰԽ���</a></li>
                              <li><a href="boardListQna.action">FAQ</a></li>
                              <li><a href="boardListBookOrder.action">�������</a></li>
                           </ul> -->
                        </li>
                        
                        <li><a href="introduce.action">ȸ������</a>
                          <!--  <ul>
                              <li><a href="history.action">ȸ�����</a></li>
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
                        	������ �� �������� �ߺ��Ǵ°� �ʹ� ���� �ڵ�   	
				          <div class="fr">
								<ul class="clr gnb">
									<s:if test="#session.session_ID == null ">
										<li><a href="javascript:location.href='Login.action'">�α���</a></li>
										<li><a href="javascript:location.href='UserAddForm.action'">ȸ������</a></li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">������</a></li>
										<li><a href="javascript:location.href='NOTICE_listAction.action'">��������</a></li>
										
									</s:if>
									<s:ifelse test="${session.admin_id != null }">
										<li>${session_admin_id}��ȯ���մϴ�.</li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">home</a></li>
										<li><a href="javascript:location.href='Logout.action'">�α׾ƿ�</a></li>
									</s:ifelse>
									
									<s:else>
										<li>${session_ID}��ȯ���մϴ�.</li>
										<li><a href="javascript:location.href='FAQ_listAction.action'">������</a></li>
										<li><a href="javascript:location.href='NOTICE_listAction.action'">��������</a></li>
										<li><a href="javascript:location.href='Logout.action'">�α׾ƿ�</a></li>
									
									</s:else>
				
								</ul>
							</div> --%>
                              	
                              	