<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>HTML5, CSS3 and JavaScript demo</title>
	<!-- charset을 정의해줘야 브라우져마다 언어가 깨지는일이 줄어듭니다-->
	<meta charset="utf-8">
	<!-- ie는 기본적으로 Compatible을 정의하지 않으면 낮은 버전으로 에뮬레이션 되어 구동됩니다.  -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
	<link href="/controller/resources/css/web.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/controller/resources/js/web.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>
<body>
<header id="master-header">
		<a id="mobile-logo" onclick="location.href='/controller/cst/home/homeImage.do'">C#</a>
		<a id="mobile-menu-toggle">
		<img src="/controller/resources/img/mobile-menu-toggle-button.png" alt="메뉴펼치기"></a>
		<menu id="gnb">
			<li onclick="location.href='/controller/cst/home/homeImage.do'">HOME</li>
			<li onclick="location.href='/controller/cst/menu/menuList.do'">
				MENU
				<div class="submenu">
					<menu>
						<li onclick="location.href='/controller/cst/menu/menuList.do'">MENU LIST</li>
						<li onclick="location.href='/controller/cst/menu/menuInfo.do'">MENU INFO</li>
					</menu>
				</div>
			</li>
			<li id="desktop-logo">C#</li>
			<li onclick="location.href='/controller/cst/order/advanceOrder.do'">
				ORDER
				<div class="submenu">
					<menu>
						<li onclick="location.href='/controller/cst/order/advanceOrder.do'">ADVANCE ORDER</li>
						<li onclick="location.href='/controller/cst/order/orderList.do'">ORDER LIST</li>
					</menu>
				</div>
				
			</li>
			<li onclick="location.href='/controller/cst/about/about.do'">ABOUT</li>
		</menu>
	</header>
	</body>
	</html>
	