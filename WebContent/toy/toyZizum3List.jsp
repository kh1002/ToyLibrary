<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>스트러츠2 게시판</title><!-- 
	<link rel="stylesheet" href="/StrutsBoard/board/common/css/css.css" type="text/css"> -->
</head>

<!-- 탭메뉴를 위한 css소스코드 -->
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

<!-- 탭을 적용한 소스코드 -->

<!-- 아마도 css를 입혀서 홈페이지에서 탭처럼 보이게 하는게 아닐까?? -->
<span class="jua" style="font-size:24pt; color:#774be9;">&nbsp;&nbsp;장난감 목록</span>
	<section class="">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-6 col-xs-12">
				<form>
					<div class="cart-table table-responsive">

						<table class="table">

							<thead>
								<tr>
									<th class="text-center" colspan="2" height="51px"><span
										style="color: #ff3366;"></span></th>
								</tr>
							</thead>
						</table>
					</div>
	</section>







            <div class="container">
                 <div class="row padding-top30"> 

                    <div class="product-grid-layout">
                    	
                        <ul class="toy-products-list">
                        <div class="col-md-9">

<table>
<div id="tabmenu">
<ul>
	<li class=""> <a href="ToyListAction.action" onClick="show_leemocon(0);">전체</a> </li>
	<li class=""> <a href="ToyZizum1ListAction.action" onClick="show_leemocon(1);">강남점</a> </li>
	<li class=""> <a href="ToyZizum2ListAction.action" onClick="show_leemocon(2);">역삼점</a> </li>
	<li class="on"> <a href="ToyZizum3ListAction.action" onClick="show_leemocon(3);">교대점</a> </li>
</ul>
</table>
 <div class="container">
                 <div class="row padding-top30"> 

                    <div class="product-grid-layout">
                    	
                        <ul class="toy-products-list">
                        <div class="col-md-9">
                        
                        <s:iterator value="UPlist" status="stat">

						<s:if test="#stat.index % 3 eq 0">
               			<tr></tr>
           	 			</s:if>

                        
                        <s:url id = "viewURL" action="ToyDetailAction" >
							<s:param name="toy_id">
								<s:property value="toy_id" />
							</s:param>
													
							<s:param name="zizum_no">
								<s:property value="zizum_no" />
							</s:param>
									
							<s:param name="currentPage">
								<s:property value="currentPage" />
							</s:param>
						</s:url>
                        
                            <li class="col-md-4 col-sm-4 col-xs-6 width-100"> 
                                <div class="toy-block">
                                    <div class="baby-image">
                                        <div class="category-new">
                                            <div class="green-new-tag new-tag">
                                                <a class="funky-font" href="#">New</a>
                                            </div>
                                        </div>
                                        <div class="toy-img">
                                            <s:a href="%{viewURL}">
                                                <!-- <img src="images/pro1.png" class="img-responsive" alt="toy"> -->
                                            	<img id="imglink" src="/ToyLibrary/image/<s:property value="toy_image"/>" class="img-responsive" alt="toy"/>
                                            </s:a>
                                        </div>  
                                        <div class="toy-details">
                                             <h4><span class="jua" style="font-size:20";><s:property value="toy_name"/></span></h4>
                                            <ul class="rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
						</s:iterator>
						</div>
                        </ul>
                    </div>
                    
                     <!-- 검색창을 보여주는 jsp코드 -->
                     <div class="s" style="margin-left: 200px;">
						<form name="search" action="list.jsp" method="post">
						<table>
							<tr>										
								<td>
									<select name="goods_category" size="1" value="">
										<option value="zizum">호점</option>
										<option value="1">강남점</option>
										<option value="2">역삼점</option>
										<option value="3">교대점</option>
									</select>
								</td>									
								<td>
									<select name="goods_category" size="1" value="">
										<option value="smallclass">소분류</option>
										<option value="class1">역할놀이</option>
										<option value="class2">언어/숫자 학습</option>
										<option value="class3">음악/악기 완구</option>
										<option value="class4">스포츠 완구</option>
										<option value="class5">블록/퍼즐/게임</option>
									</select>
								</td>							
								<td>
									<select name="goods_category" size="1" value="">
										<option value="toy_age">추천연령</option>
										<option value="1to6">1개월~6개월</option>
										<option value="7to12">7개월~12개월</option>
										<option value="13to18">13개월~18개월</option>
										<option value="19to24">19개월~24개월</option>
										<option value="25to36">25개월~36개월</option>
										<option value="37to48">37개월~48개월</option>
									</select>
								</td>
								<td>
									<input type="text" name="search_key" value="" size="10">
								</td>
								<td>
									<input type="submit" value="검색">
								</td>
							</tr>
						</form> 	
						</table>

					
					<!-- 링크 리스트 1|2|3|4|5 가 나타나는 코드 -->
					<table style="margin-left: 100px; margin-top: 20px;">
						<tr align="center">
							<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
						</tr>
  </table>
                </div>
            </div>
        </div>


</body>
</html>

