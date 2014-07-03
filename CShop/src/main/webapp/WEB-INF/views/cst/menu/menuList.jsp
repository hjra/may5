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
	<!-- <form action="menuInfo.do" method="post"> -->
<ul class="menu-list">

	<li class="cake title">
		<label>1호 케익입니다.</label>
	</li>

	<c:forEach var="item" items="${itemList }" varStatus="status">
		<li class="cake">
		${status.index }
		<%-- <input name="${status.index}" value="${status.index}" name="index">		
				<input type="hidden" name="${item.itemId }" value="${item.itemId }" name="itemId">		
				<input type="submit" value="${item.itemName }" name="itemName"> --%>
			<a href="menuInfo.do?itemId=${item.itemId}">${item.itemName}</a>	
		<%-- <a href="menuInfo.do=">${item.itemName}</a> --%>
 </li>
	</c:forEach>
	
</ul>
<!-- </form> -->