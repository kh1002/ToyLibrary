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

<div id="tabmenu">
<ul>
	<li class="on"> <a onClick="show_leemocon(0);">전체</a> </li>
	<li class=""> <a onClick="show_leemocon(1);">강남점</a> </li>
	<li class=""> <a onClick="show_leemocon(2);">교대점</a> </li>
	<li class=""> <a onClick="show_leemocon(3);">역삼점</a> </li>
</ul>
</div>
	<div id="tabcontent0" style="display:">
	
	
	
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
		
		
		
		
</div>
	<div id="tabcontent1" style="display:none;">
	탭메뉴2
</div>
	<div id="tabcontent2" style="display:none;">
	탭메뉴3
</div>
	<div id="tabcontent3" style="display:none;">
	탭메뉴4
</div>

<script language="javascript">
function show_leemocon(tabnum){
var i;
var d = new Array(4);  //메뉴갯수를 넣어주세요
var tm = document.getElementById("tabmenu").getElementsByTagName("li");
for(i=0; i<=3; i++){  //메뉴갯수보다 하나 작은수를 넣어주세요
  d[i] = document.getElementById("tabcontent"+i);
  d[i].style.display = "none";
  tm[i].className = "";
};
  
  switch(tabnum){
   case tabnum:
    d[tabnum].style.display = "";
tm[tabnum].className = "on";
    break;
 
  };
};
</script>


<!-- 탭 적용 전의 원래 소스코드 -->
<!-- 
<body>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h2>사용자 장난감 리스트</h2></td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>

전체,강남점,역삼점,교대점의 탭이 들어가는 부분
아마도 css를 입혀서 홈페이지에서 탭처럼 보이게 하는게 아닐까??

<div class="tabs">
	<ul>
		<li class="on">
			<a href="">전체</a>
		</li>
		<li>
			<a href="">강남점</a>
		</li>
		<li>
			<a href="">역삼점</a>
		</li>
		<li>
			<a href="">교대점</a>
		</li>
	</ul>
</div> -->

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
 	
 	
<!-- 등록되어있는 장난감 이미지를 출력하는 코드. 	 -->
	
	
	<!-- 상품 리스트 -->
<%-- 		<table border="0">
		<tr>	   
		
			
			<s:iterator value="UPlist" status="stat">
			
				<s:url id = "viewURL" action="ToyDetailAction" >
					<s:param name="toy_id">
						<s:property value="toy_id" />
					</s:param>
	
					<s:param name="currentPage">
						<s:property value="currentPage" />
					</s:param>
				</s:url>
			
			
				<tr bgcolor="#ffffff" align="center">
					<td><s:property value="toy_id"/></td>	
					<td><s:property value="toy_image"/></td>
					<td><img src="./upload/" width="130" height="130" border="0"/></td>
					
				</tr>
				<tr>	
					<td align="left"><s:property value="zizum_no"/>
					&nbsp;<s:a href="%{viewURL}"><s:property value="toy_name"/></s:a></td>
								 
									 
					</td>
				</tr>
				<tr>	
					<td align="center"><s:property value="toy_age"/></td>
					<td>전체() | 보유() | 대여()</td>
					<td align="center"><s:property value="state_code"/></td>
				</tr>
			
			
			</s:iterator>
			
			
		</tr>
		</table>
	 --%>

	<!-- <img src="./upload/푸.gif" width="130" height="130" border="0"> -->
	


		



<!-- 링크 리스트 1|2|3|4|5 가 나타나는 코드 -->
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
	</tr>
		

</body>
</html>


<!-- 

실행URL ::: http://localhost:8080/StrutsBoard/listAction.action

	:listAction ==> execute()  <== selectAll
			list  과
			pagingHtml  을 가져다씀???
	:boardList.jsp로 포워딩해 결과가 나옴

 -->




<%--    <c:choose> 
					
			<c:otherwise> 

			<c:forEach var="item" items="${requestScope.itemList}">
			<td width="180" valign="top" >
			<br>
				<div align="center">
				<%if(category.equals("new_item")) { 
			      	if(price.equals("no")) {
				%>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}&isitem=new">
				<%	}else{ %>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}
						&isitem=new&price=${price}">
				<% 	}
			      }else if (category.equals("hit_item")) { 
			      	if(price.equals("no")) {
			 	%>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}&isitem=hit">
				<% 	}else{ %>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}
						&isitem=hit&price=${price}">
				<%	}
			      } else { 
					if(price.equals("no")) {
				%>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}&isitem=other">
				<% 	}else{ %>
				<a href="Goods_Detail.go?item=${item.GOODS_CATEGORY}
						&gr_goods_num=${item.GOODS_NUM}
						&isitem=other&price=${price}">
				<%	}
				 }
				%>
			 	
			 	<img src="./upload/" width="130" height="130" border="0"/>
			 	<br/>뽀로롱인형        ${item.GOODS_NAME}<br/>
				</a>
				<br/><b> 전체()| 보유() | 대여() </b>
				</div>
				<br>
				</td>
				</c:forEach>
				</c:otherwise>
			</c:choose> --%>




