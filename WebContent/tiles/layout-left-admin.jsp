<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><tiles:getAsString name="title-admin" /></title>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
     <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

               <!-- Bootstrap core CSS -->
        <link rel="icon" href="images/favicon.png"/>
        <link href="/ToyLibrary/style/css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Custom styles for this template -->
        <link href="/ToyLibrary/style/css/style.css" rel="stylesheet">
        <link href="/ToyLibrary/style/css/responsive.css" rel="stylesheet">
        <link href="/ToyLibrary/style/css/bxslider.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700|Fredoka+One" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Baloo+Paaji" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Comfortaa:300,400,700" rel="stylesheet"> 
        <link href="/ToyLibrary/style/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/ToyLibrary/style/fonts/website-font/stylesheet.css" rel="stylesheet" type="text/css" />

        <script src="/ToyLibrary/style/js/jquery.min.js" type="text/javascript"></script>
        <script src="/ToyLibrary/style/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/ToyLibrary/style/js/bxslider.js" type="text/javascript"></script>
        <script src="/ToyLibrary/style/js/instafeed.min.js" type="text/javascript"></script>
        <script src="/ToyLibrary/style/js/custom.js" type="text/javascript"></script>

		<link href="https://cdn.rawgit.com/YJSoft/Webfonts/0.1/BM_JUA.css" rel="stylesheet" type="text/css" />

</head>
<body>	
	
<div class="container-fluid">
	<tiles:insertAttribute name="header-admin" />
	<section class="padding-top100 best-seller">
	<div class="container">
		<div class="col-md-3">
			<tiles:insertAttribute name="lefter-admin" />
		</div>
		<div class="col-md-8">
			<tiles:insertAttribute name="body-admin" />
		</div>	
	</div>
	</section>
	<tiles:insertAttribute name="footer-admin" />
</div>
	
</body>
</html>
