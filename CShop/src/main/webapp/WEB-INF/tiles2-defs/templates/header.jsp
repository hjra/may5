<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>헤더예용</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
<link href="/controller/resources/css/web.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="/controller/resources/js/web.js"></script>

</head>
<body>
<h1 id="brand"
	onclick="location.href='/controller/cst/home/homeImage.do'">C#</h1>
<header class="cshopmain">
	<div class="chome">
		<a class="logo" href="#">CShop</a>
		<div class="mobile-toggle">
			<span></span> <span></span> <span></span>
		</div>
		<nav>
			<ul>
				<li><a href="/controller/cst/home/homeImage.do">HOME</a></li>
				<li><a href="/controller/cst/menu/menuList.do">MENU</a></li>
				<li><a href="/controller/cst/order/advanceOrder.do">ORDER</a></li>
				<li><a href="/controller/cst/about/about.do">ABOUT</a></li>
			</ul>
		</nav>
	</div>
</header>

</body>
</html>