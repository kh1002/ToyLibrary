<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
	<head>
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
		<table>
			<tr><center><h1>�ü� ��Ȳ</h1></center></tr>
		</table>
		<style type="text/css">
*{
	margin:0;
	padding:0;
}
#container{
	width:600px;
	margin:30px auto;
}
ul.tab{
	padding:0;
}
ul.tab li{
	list-style-type:none;
	width:200px;
	height:40px;
	float:left;
}
ul.tab li a{
	outline:none;
	background:url("http://cfile25.uf.tistory.com/image/17710F454FEE42C1326F65");
	display:block;
	color:blue;
	line-height:40px;
	text-align:center;
}
ul.tab li a.selected{
	background:url("http://cfile7.uf.tistory.com/image/18710F454FEE42C133F20E");
	text-decoration:none;
	color:#333;
	cursor:default;
}
ul.panel{
	clear:both;
	border:1px solid #9FB7D4;
	border-top:none;
	padding:0;
}
ul.panel li{
	list-style-type:none;
	padding:10px;
	text-indent:1em;
	color:#333;
}
		</style>
	</head>
	<body>
		<div id="container">
			<ul class="tab">
				<li><a href="#tab1" class="selected">������</a></li>
				<li><a href="#tab2">������</a></li>
				<li><a href="#tab3">������</a></li>
			</ul>
			<ul class="panel">
				<li id="tab1">
		
		<table>
		<tr>
			<td> ��ġ : ������ </td>
		</tr>
		<tr>
			<td> ���� : 100�� </td>
		</tr>
		<tr>
			<td> ���� �ο� : 50�� </td>
		</tr>
		</table>		
		
		<img src="030100_07.gif">

	

				</li>
				<li id="tab2">
		<table>
		<tr>
			<td> ��ġ : ������ </td>
		</tr>
		<tr>
			<td> ���� : 100�� </td>
		</tr>
		<tr>
			<td> ���� �ο� : 50�� </td>
		</tr>
		</table>		
		
		<img src="030100_07.gif">
				</li>
				<li id="tab3">
				<table>
		<tr>
			<td> ��ġ : ������ </td>
		</tr>
		<tr>
			<td> ���� : 100�� </td>
		</tr>
		<tr>
			<td> ���� �ο� : 50�� </td>
		</tr>
		</table>		
		
		<img src="030100_07.gif">
				</li>
	</body>
</html>