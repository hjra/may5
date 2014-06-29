<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
	<link href="/controller/resources/css/web.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="/controller/resources/js/web.js"></script>
	<title>메뉴리스트</title>
<style>
ul.menu-list {
	list-style: none;
}

li.cake {
	display: inline-block;
	zoom: 1;
	*display: inline;
}

a.cake {
	display: block;
	width: 100px;
	height: 100px;
	border: 1px solid #ddd;
}
ul.cake{
	display: block;
	width: 300px;
	border: 1px;
}
</style>
</head>
<body>
	<p>메뉴리스트입니다.</p>
	<ul class="menu-list">
		<!-- for each ( List <map> )
			<li><a href="menuInfo.do?itemId=${itemId}">${itemName}</a></li>
			for each end -->
		<li class=cake><label>1호 케익입니다.</label>
			<li><a class=cake href="menuInfo.do?itemId=S1SSS&sizeCode=S">생크림 딸기딸기딸기 케익</a></li>
			<li><a class=cake href="menuInfo.do?itemId=S2SSS&sizeCode=S">초코크림 딸기딸기딸기 케익</a></li>
			<li><a class=cake href="menuInfo.do?itemId=S1SSB&sizeCode=S">생크림 딸기딸기 바나나 케익</a></li>
		</ul>
		<ul class="cake">
			<c:forEach var="item" items="${itemList }" varStatus="status">
			<li class=cake>
				<a href="menuInfo.do?itemId=${item.itemId}&index=${status.index}">${item.itemName}</a>
				<input type="button" value="${status.index }">
			</li>
		</c:forEach>
	</ul>
</body>


</html>
