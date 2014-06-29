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
	<link href="/controller/resources/css/web.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="/controller/resources/js/web.js"></script>
</head>
<body>
	
	<div class="ha">
		<h1><span>Hi ha</span><br>navigation</h1>
		<div class="mouse">
			<span></span>   
		</div>
	</div>
	<div class="chome content">
		<div class="home">
			<h1>HOME</h1>
			<a href="/controller/cst/membership/termsForm.do">JOIN ${count}</a>
			<a href="/controller/cst/membership/myPage.do">MY C#</a>
			<a href="/controller/cst/membership/calendar.do">CALENDAR</a>
		</div>
		<div class="menu">
			<h1>MENU</h1>
			<a href="/controller/cst/menu/menuList.do">MENU</a>
			<div id="menu-frame">
				
				<ul class="cakeList">
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=1');">케이크 1호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=2');">케이크 2호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=3');">케이크 3호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=4');">케이크 4호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=5');">케이크 5호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=6');">케이크 6호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=7');">케이크 7호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=8');">케이크 8호</a></li>
					<li><a href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=9');">케이크 9호</a></li>
				</ul>
				
			</div>
		</div>
		<div class="order">
			<a href="../order/advanceOrder.do">ORDER</a>
		
		</div>
		<div class="about">
			<h1>ABOUT</h1>
		
		</div>
	</div>
	
</body>
</html>
