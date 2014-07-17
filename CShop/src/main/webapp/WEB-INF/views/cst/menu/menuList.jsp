<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<style>
#sticker-view {
	position:absolute;
	overflow:hidden;
	margin:0;
	padding:0;
	top:0;
	right:0;
	width:50px;
	height:50px;
	z-index:1;
}

#sticker-view li{
	list-style:none;
	background-color:#753;
	color:white;
	z-index:2;
	position:absolute;
	margin:0;
	padding:0;
	width:50px;
	height:50px;
	text-align:center;
	line-height:50px;
	font-size: x-small;
}

</style>
<!-- <img alt="테스트" src="http://media-cache-ak0.pinimg.com/736x/78/9d/00/789d00ba6fbae78f4382dceb7f3c9230.jpg">
 -->	<c:forEach var="list" items="${collection}" varStatus="status">
<ul class="menu-list">
	<li class="cake title">
		<c:choose>
						<c:when test="${status.index == 0}">
							<label>SMALL</label>						
						</c:when>
						<c:when test="${status.index == 1}">
							<label>MIDIUM</label>						
						</c:when>
						<c:when test="${status.index == 2}">
							<label>BIG</label>						
						</c:when>
						<c:otherwise>
							<label>ETC</label>
						</c:otherwise>
			</c:choose>
	</li>
<c:forEach var="item" items="${list}">
					<li class="cake">
		<img onclick="location.href='menuInfo.do?itemId=${item.itemId}'" src="/CShop/resources/img/cake/${item.itemId}1.png" alt="대표이미지" style="width: 170px; margin: 10px">
						<c:choose>
						
							<c:when test="${item.sticker == 1}"><div id="sticker-view"><ul id="sticker-view-display"><li data-value="1">BEST</li></ul></div></c:when>
							<c:when test="${item.sticker == 2}"><div id="sticker-view"><ul id="sticker-view-display"><li data-value="2">SPECIAL</li></ul></div></c:when>
							<c:when test="${item.sticker == 3}"><div id="sticker-view"><ul id="sticker-view-display"><li data-value="3">SALE</li></ul></div></c:when>
						
						</c:choose>
						<footer>
							<label>
								<span>${item.itemName}</span>
							</label>
						</footer>	
			 		</li>
				</c:forEach>
			</ul>
		</c:forEach>




