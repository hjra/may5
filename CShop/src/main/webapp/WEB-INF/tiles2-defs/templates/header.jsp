<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="master-header">
		<a id="mobile-logo" onclick="location.href='/controller/cst/home/homeImage.do'">C#</a>
		<a id="mobile-menu-toggle">
		<img src="/controller/resources/img/mobile-menu-toggle-button.png" alt="메뉴펼치기"></a>
		<menu id="gnb">
			<li onclick="location.href='homeImage.do'">HOME</li>
			<li onclick="location.href='/controller/cst/menu/menuList.do'">
				MENU
				<div class="submenu">
					<menu>
						<li onclick="location.href='/controller/cst/menu/menuList.do'">MENU LIST</li>
						<li onclick="location.href='/controller/cst/menu/menuInfo.do'">MENU INFO</li>
					</menu>
				</div>
			</li>
			<li id="desktop-logo">C#</li>
			<li onclick="location.href='/controller/cst/order/advanceOrder.do'">
				ORDER
				<div class="submenu">
					<menu>
						<li onclick="location.href='/controller/cst/order/advanceOrder.do'">ADVANCE ORDER</li>
						<li onclick="location.href='/controller/cst/order/orderList.do'">ORDER LIST</li>
					</menu>
				</div>
				
			</li>
			<li onclick="location.href='/controller/cst/about/about.do'">ABOUT</li>
		</menu>
	</header>
	