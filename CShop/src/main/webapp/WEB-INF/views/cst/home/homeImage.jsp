<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객페이지첫화면</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
<link href="/controller/resources/css/web.css" rel="stylesheet">
</head>

<body>
	<header class="cshopmain">
		<div class="chome">
			<a class="logo" href="#">CShop</a>
			<div class="mobile-toggle">
				<span></span> <span></span> <span></span>
			</div>
			<nav>
				<ul>
					<li><a href=".home">HOME</a></li>
					<li><a href=".menu">MENU</a></li>
					<li><a href=".order">ORDER</a></li>
					<li><a href=".about">ABOUT</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<div class="ha">
		<h1>
			<span>Hi ha</span><br>navigation
		</h1>
		<div class="mouse">
			<span></span>
		</div>
	</div>
	<div class="chome content">
		<div class="home">
			<h1>HOME</h1>
			<a href="../membership/termsForm.do">JOIN ${count}</a> <a
				href="../membership/myPage.do">MY C#</a> <a
				href="../membership/calendar.do">CALENDAR</a>


		</div>
		<div class="menu">
			<h1>MENU</h1>
			<a href="/controller/cst/menu/menuList.do">MENU</a>
			<div id="menu-frame">

				<ul class="cakeList">
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=1');">케이크
							1호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=2');">케이크
							2호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=3');">케이크
							3호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=4');">케이크
							4호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=5');">케이크
							5호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=6');">케이크
							6호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=7');">케이크
							7호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=8');">케이크
							8호</a></li>
					<li><a
						href="javascript:window.viewChange('#menu-frame','cakeInfo.html?cakeId=9');">케이크
							9호</a></li>
				</ul>

			</div>
		</div>
		<div class="order">
			<h1>ORDER</h1>
			<a href="../order/advanceOrder.do">ORDER</a>
		</div>
		<div class="about">
			<h1>ABOUT</h1>

		</div>
	</div>


</body>
</html>

