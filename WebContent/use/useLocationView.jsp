<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
	<head>
	<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />
          <style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif; text-align: center;}</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<title>찾아오시는 길</title>
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
		<span class="jua" style="font-size:24pt; color:#774be9;"  >&nbsp;&nbsp;찾아오시는 길</span>





	</head>
	<body>
	
	<section class="">
	<div class="container">
	<div class="row">
	<div class="col-md-9 col-sm-6 col-xs-12">
	<form>
					<div class="cart-table table-responsive">
					
						<table class="table">
							
							<thead>
								<tr>
									<th class="text-center" colspan="2">
									<span style="color:#ff3366;">가</span>
									</th>
								</tr>
							</thead>
							</table>
	</div>
	</section>
	
	
	

<!-- 	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-6 col-xs-12">
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center" colspan="2">
									<span style="color:#ff3366;">가</span>
									</th>
								</tr>
							</thead>
							<tbody> -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
 */	display:block;
	color:blue;
	line-height:40px;
	text-align:center;
	background-color:#F5A9E1;	
}
ul.tab li a.selected{
/* 	background:url("http://cfile7.uf.tistory.com/image/18710F454FEE42C133F20E");
 */	text-decoration:none;
	color:#333;
	cursor:default;
	background-color:#F5A9E1;	
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
		</style>
		
	<table><tr></tr></table>
		<div id="containContent" style="margin-left: 100px;">
			<ul class="tab">
				<li><b><a href="#tab1" class="selected">강남점</a></b></li>
				<li><b><a href="#tab2">역삼점</a></b></li>
				<li><b><a href="#tab3">교대점</a></b></li>
			</ul>
			<ul class="panel">
				<li id="tab1">
	 <div id="map"  style="width:580px;height:250px; align:center"></div> 

	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=182b6f4e39732b838518611442a33740"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new daum.maps.LatLng(37.49894, 127.03282), // 지도의 중심좌표
		        level: 2, // 지도의 확대 레벨
		        mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new daum.maps.Map(mapContainer, mapOption); 

		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new daum.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);	

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new daum.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도 중심 좌표 변화 이벤트를 등록한다
		daum.maps.event.addListener(map, 'center_changed', function () {
			console.log('지도의 중심 좌표는 ' + map.getCenter().toString() +' 입니다.');
		});

		// 지도 확대 레벨 변화 이벤트를 등록한다
		daum.maps.event.addListener(map, 'zoom_changed', function () {
			console.log('지도의 현재 확대레벨은 ' + map.getLevel() +'레벨 입니다.');
		});

		// 지도 영역 변화 이벤트를 등록한다
		daum.maps.event.addListener(map, 'bounds_changed', function () {
			var mapBounds = map.getBounds(),
				message = '지도의 남서쪽, 북동쪽 영역좌표는 ' +
							mapBounds.toString() + '입니다.';

			console.log(message);	
		});

		// 지도 시점 변화 완료 이벤트를 등록한다
		daum.maps.event.addListener(map, 'idle', function () {
			var message = '지도의 중심좌표는 ' + map.getCenter().toString() + ' 이고,' + 
							'확대 레벨은 ' + map.getLevel() + ' 레벨 입니다.';
			console.log(message);
		});

		// 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
		daum.maps.event.addListener(map, 'click', function (mouseEvent) {
			console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString() + ' 입니다.');
		});	

		// 지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
		daum.maps.event.addListener(map, 'drag', function () {
			var message = '지도를 드래그 하고 있습니다. ' + 
							'지도의 중심 좌표는 ' + map.getCenter().toString() +' 입니다.';
			console.log(message);
		});

		// 지도에 마커를 생성하고 표시한다
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.49894, 127.03282), // 마커의 좌표
		    draggable : true, // 마커를 드래그 가능하도록 설정한다
		    map: map // 마커를 표시할 지도 객체
		});

		// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
		daum.maps.event.addListener(marker, 'click', function() {
		    alert('마커를 클릭했습니다!');
		});

		// 마커에 mouseover 이벤트를 등록한다
		daum.maps.event.addListener(marker, 'mouseover', function() {
		    console.log('마커에 mouseover 이벤트가 발생했습니다!');
		});

		// 마커에 mouseout 이벤트 등록
		daum.maps.event.addListener(marker, 'mouseout', function() {
		    console.log('마커에 mouseout 이벤트가 발생했습니다!');
		});

		// 마커에 dragstart 이벤트 등록
		daum.maps.event.addListener(marker, 'dragstart', function() {
		    console.log('마커에 dragstart 이벤트가 발생했습니다!');
		});

		// 마커에 dragend 이벤트 등록
		daum.maps.event.addListener(marker, 'dragend', function() {
		    console.log('마커에 dragend 이벤트가 발생했습니다!');
		});
	</script>
	<span style="font-size: 13px;">
	<br>● 주소 및 연락처<br>
	＊ 주소 : 서울시 강남구 서초4동 강남대로61길<br>
	＊ 연락처 : 02) 012-3456<br><br>
	● 교통 안내<br>
	＊ 버스 : 470번, 471번, 740번, 360번<br>
	＊ 지하철 : 2호선<br><br>
	● 주차 안내<br>
	불가</span>
	

				</li>
				<li id="tab2">
<img src="/ToyLibrary/use/location4.PNG" width=540px; height=250px;><br>
	<span style="font-size: 13px;">
	<br>● 주소 및 연락처<br>
	＊ 주소 : 서울시 강남구 역삼1동 논현로 93길<br>
	＊ 연락처 : 02) 012-3456<br><br>
	● 교통 안내<br>
	＊ 버스 : 146번, 	240번, 243번<br>
	＊ 지하철 : 2호선<br><br>
	● 주차 안내<br>
	불가</span>

				</li>
				<li id="tab3">
<img src="/ToyLibrary/use/location5.PNG"width=540px; height=250px;><br>
	<span style="font-size: 13px;">
	<br>● 주소 및 연락처<br>
	＊ 주소 : 위치 : 서울시 서초구 서초3동 법원로2길<br>
	＊ 연락처 : 02) 012-3456<br><br>
	● 교통 안내<br>
	＊ 버스 : 340번, 341번, 342번<br>
	＊ 지하철 : 2호선, 3호선<br><br>
	● 주차 안내<br>
	불가		</span>
				</li>
	
	</ul>

	
	</body>
	
	
</html>