<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome to C#</title>
	<!-- charset을 정의해줘야 브라우져마다 언어가 깨지는일이 줄어듭니다-->
	<meta charset="utf-8">
	<!-- ie는 기본적으로 Compatible을 정의하지 않으면 낮은 버전으로 에뮬레이션 되어 구동됩니다.  -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
	
	<!-- style -->
	<link href="/CShop/resources/css/admin-layout.css" rel="stylesheet">
	
	<!-- default js -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="/CShop/resources/js/admin.js"></script>
	
	<!-- datepicker 부분 -->
	<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	<script type="text/javascript" src="jquery.ui.datepicker-ko.js"></script>
	
</head>
<body>
	<tiles:insertAttribute name="header" />
	<main>
		<section class="local-side">
			<tiles:insertAttribute name="menu" />
		</section>
		<section class="local-side-contents">
			<tiles:insertAttribute name="body" />
		</section>
	</main>
</body>
</html>
