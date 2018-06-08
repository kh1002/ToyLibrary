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

<table>
<div id="tabmenu">
<ul>
	<li class=""> <a href="ToyListAction.action" onClick="show_leemocon(0);">전체</a> </li>
	<li class=""> <a href="ToyZizum1ListAction.action" onClick="show_leemocon(1);">강남점</a> </li>
	<li class=""> <a href="ToyZizum2ListAction.action" onClick="show_leemocon(2);">역삼점</a> </li>
	<li class="on"> <a href="ToyZizum3ListAction.action" onClick="show_leemocon(3);">교대점</a> </li>
</ul>
</table>

<!-- 탭메뉴 판별의 변경전 코드 -->
<!-- <ul>
	<li class="on"> <a onClick="show_leemocon(0);">전체</a> </li>
	<li class=""> <a onClick="show_leemocon(1);">강남점</a> </li>
	<li class=""> <a onClick="show_leemocon(2);">교대점</a> </li>
	<li class=""> <a onClick="show_leemocon(3);">역삼점</a> </li>
</ul> -->


<table border="0">
		<tr>	   
			<s:iterator value="UPlist" status="stat">
			
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
			
			
				<tr bgcolor="#ffffff" align="center">
					<%-- <td><s:property value="toy_id"/></td>	 --%>
					<%-- <td><s:property value="toy_image"/></td> --%>
					<td><img src="./upload/" width="130" height="130" border="0"/></td>
					
				</tr>
				<tr>	
					<td align="left"><s:property value="zizum_no"/>
					&nbsp;<s:a href="%{viewURL}"><s:property value="toy_name"/></s:a></td>
								 
									 
					</td>
				</tr>
				<tr>	
					<%-- <td align="center"><s:property value="toy_age"/></td> --%>
					<td>전체() | 보유() | 대여()</td>
					<%-- <td align="center"><s:property value="state_code"/></td> --%>
				</tr>
			
			
			</s:iterator>

		</tr>
	</table>


 <!-- 검색창을 보여주는 jsp코드 -->
<form name="search" action="list.jsp" method="post">

	<tr>										
		<td>
			<select name="goods_category" size="1" value="">
				<option value="zizum">호점</option>
				<option value="fulldress">강남점</option>
				<option value="tshirts">역삼점</option>
				<option value="shirts">교대점</option>
			</select>
		</td>									
		<td>
			<select name="goods_category" size="1" value="">
				<option value="smallclass">소분류</option>
				<option value="fulldress">정장/신사복</option>
				<option value="tshirts">티셔츠</option>
				<option value="shirts">와이셔츠</option>
				<option value="pants">팬츠</option>
				<option value="shoes">슈즈</option>
			</select>
		</td>							
		<td>
			<select name="goods_category" size="1" value="">
				<option value="toyage">추천연령</option>
				<option value="fulldress">정장/신사복</option>
				<option value="tshirts">티셔츠</option>
				<option value="shirts">와이셔츠</option>
				<option value="pants">팬츠</option>
				<option value="shoes">슈즈</option>
			</select>
		</td>
	</tr>
	
	<input type="text" name="search_key" value="" size="10">
	<input type="submit" value="검색">
</form> 	



<!-- 링크 리스트 1|2|3|4|5 가 나타나는 코드 -->
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>
		

</body>
</html>




