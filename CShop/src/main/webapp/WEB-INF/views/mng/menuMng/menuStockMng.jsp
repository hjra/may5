<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" %>
<h1>상품재고</h1>
orderCount::${orderCount}<br>
getOrderListSameItemId::${getOrderListSameItemId}
<br><br><br>

<c:forEach var="sameItemId" items="${getOrderListSameItemId}">
	<c:choose>
		<c:when test="${sameItemId.itemCnt>1}">
			<c:forEach var="order"  items="${orderList}">
				<li class="cake">
					<img src="/controller/resources/img/cake/${order.itemId}1.png" alt="대표이미지" style="width: 190px; margin: 3px">
				<a> 아이템 아이디 :: ${order.itemId}</a>
				<a> 재고수 :: ${order.stockAmount }</a>
				</li>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<c:forEach var="order"  items="${orderList}">
				<li class="cake">
					<img src="/controller/resources/img/cake/${order.itemId}1.png" alt="대표이미지" style="width: 190px; margin: 3px">
				<a> 아이템 아이디 :: ${order.itemId}</a>
				<a> 재고수 :: ${order.stockAmount }</a>
				</li>
			</c:forEach>
		</c:otherwise>
	</c:choose>

${sameItemId.itemId} : : ${sameItemId.itemCnt}<br><br>
</c:forEach>


<ul>
	<c:forEach var="order"  items="${orderList}">
		<li class="cake">
				<img src="/controller/resources/img/cake/${order.itemId}1.png" alt="대표이미지" style="width: 190px; margin: 3px">
			<a> 아이템 아이디 :: ${order.itemId}</a>
			<a> 재고수 :: ${order.stockAmount }</a>
		</li>
</c:forEach>
</ul>


