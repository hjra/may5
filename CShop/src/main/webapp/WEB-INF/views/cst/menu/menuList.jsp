<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	

<style>
ul.menu-list {
	list-style: none;
	width: auto;
	border: 1px;
	margin: 10px;
}

li.cake {
	display: inline-block;
	width: 200px;
	height: 200px;
	border: 1px solid #ddd;
	margin: 20px;
	vertical-align:top;
}
li.cake.title{
	text-align:center;
	line-height:200px;
	background:#e5c0b7;
	color:white;
}
/* ul.cake{
	display: block;
	width: 300px;
	border: 1px;
} */
</style>

<p>메뉴리스트입니다.</p>
<ul class="menu-list">
	<li class="cake title">
		<label>1호 케익입니다.</label>
	</li>
	<c:forEach var="item" items="${itemList }" varStatus="status">
		<li class="cake">
			<a href="menuInfo.do?itemId=${item.itemId}&index=${status.index}">${item.itemName}</a>
			<input type="hidden" value="${status.index }">		
		</li>
	</c:forEach>
</ul>
