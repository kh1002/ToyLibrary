<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
	<head>
	<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','����ǹ��� �־�',sans-serif; text-align: center;}</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<title>�ü� ��Ȳ</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script type="text/javascript">
		
$(function(){
	$("ul.panel li:not("+$("ul.tab li a.selected").attr("href")+")").hide()
	$("ul.tab li a").click(function(){
		$("ul.tab li a").removeClass("selected");
		$(this).addClass("selected");
		$("ul.panel li").hide();
		$($(this).attr("href")).show();
		return false;
	});
});
		</script>
		<span class="jua" style="font-size:24pt; color:#00BFFF;"  >��&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;Ȳ</span>
		
		<style type="text/css">
*{
	margin:0;
	padding:0;
}
#containContent{
	width:600px;
	margin:30px auto;
	
}
ul.tab{
	padding:0;
	font-size:13px;
	
}
ul.tab li{
	list-style-type:none;
	width:200px;
	height:40px;
	float:left;
}
ul.tab li a{
	outline:none;
/* 	background:url("http://cfile25.uf.tistory.com/image/17710F454FEE42C1326F65");
 */	
 	background-color:#F5A9E1;
 	display:block;
	color:blue;
	line-height:40px;
	text-align:center;
}
ul.tab li a.selected{
/* 	background:url("http://cfile7.uf.tistory.com/image/18710F454FEE42C133F20E");
 */	
 	background-color:#F5A9E1;	
 	text-decoration:none;
	color:#333;
	cursor:default;
}
ul.panel{
	clear:both;
	border:3px solid #9FB7D4;
	border-top:none;
	padding:0;
	width:600px;
}
ul.panel li{
	list-style-type:none;
	padding:10px;
	text-indent:1em;
	color:#333;
	
}
.align-center { text-align: center; }

		</style>
	</head>
	<body><table><tr></tr></table>
		<div id="containContent" >
			<ul class="tab " >
				<li><b><a href="#tab1" class="selected">������</a></b></li>
				<li><b><a href="#tab2">������</a></b></li>
				<li><b><a href="#tab3">������</a></b></li>
			</ul>
			<ul class="panel" >
				<li id="tab1">
		
					<table>
						<tr>
							<td> ��ġ : ����� ������ ����4�� �������61�� </td>
						</tr>
						<tr>
							<td> ���� : 80�� </td>
						</tr>
						<tr>
							<td> ���� �ο� : 30�� </td>
						</tr>
							
						<img src="/ToyLibrary/use/030100_07.gif" width="550" height="300">
	
					</table>

				</li>
				<li id="tab2">
					<table>
						<tr>
							<td> ��ġ : ����� ������ ����1�� ������ 93�� </td>
						</tr>
						<tr>
							<td> ���� : 70�� </td>
						</tr>
						<tr>
							<td> ���� �ο� : 20�� </td>
						</tr>
					
						<img src="/ToyLibrary/use/030100_07.gif" width="550" height="300">
					</table>	
				</li>
				
				
				<li id="tab3">
				<table>
					<tr>
						<td> ��ġ : ����� ���ʱ� ����3�� ������2�� </td>
					</tr>
					<tr>
						<td> ���� : 90�� </td>
					</tr>
					<tr>
						<td> ���� �ο� : 30�� </td>
					</tr>
						
					<img src="/ToyLibrary/use/030100_07.gif" width="550" height="300">
				</table>
				</li>
				
		</ul>
<!-- 		</div> -->
		
			
				
	</body>
</html>