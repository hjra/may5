<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	

<p>메뉴리스트입니다.</p>
	<!-- <form action="menuInfo.do" method="post"> -->
<ul class="menu-list">

	<li class="cake title">
		<label>1호 케익입니다.</label>
	</li>

	<c:forEach var="item" items="${itemList }" varStatus="status">
		<li class="cake">
		<input type="hidden" value="${status.index }">
		<img onclick="location.href='menuInfo.do?itemId=${item.itemId}'" src="/CShop/resources/img/cake/${item.itemId}1.png" alt="대표이미지" style="width: 150px">
	<br>
		<a href="menuInfo.do?itemId=${item.itemId}">${item.itemName}</a>	
 </li>
	</c:forEach>
	
</ul>





<!-- </form> -->
