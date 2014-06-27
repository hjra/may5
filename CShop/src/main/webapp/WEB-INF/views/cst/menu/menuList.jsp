<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
ul.menu-list {
	list-style: none;
}

li {
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
		 <li><label>1호 케익입니다.</label>
		<li><a class=cake href="menuInfo.do?itemId=S1SSS&sizeCode=S">생크림 딸기딸기딸기 케익</a></li>
		<li><a class=cake href="menuInfo.do?itemId=S2SSS&sizeCode=S">초코크림 딸기딸기딸기 케익</a></li>
		<li><a class=cake href="menuInfo.do?itemId=S1SSB&sizeCode=S">생크림 딸기딸기 바나나 케익</a></li>
	</ul>
	<ul class="cake">
	<c:forEach var="item" items="${itemList }" varStatus="status">
	<li><a href="menuInfo.do?itemId=${item.itemId}&index=${status.index}">${item.itemName}</a></li>
	<input type="button" value="${status.index }">
	</c:forEach>
	</ul>
	
</body>

</html>
