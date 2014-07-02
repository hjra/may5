<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
	function login() {
		document.getElementById("mbsF").action = "loginForm.do";
		document.getElementById("mbsF").submit();
	}
	function logout() {
		document.getElementById("mbsF").action = "logoutProcess.do";
		document.getElementById("mbsF").submit();
	}
	function join() {
		document.getElementById("mbsF").action = "termsForm.do";
		document.getElementById("mbsF").submit();
	}
	function myPage() {
		document.getElementById("mbsF").action = "myPage.do";
		document.getElementById("mbsF").submit();
	}
	function calendar() {
		document.getElementById("mbsF").action = "calendar.do";
		document.getElementById("mbsF").submit();
	}
</script>
<header id="master-header">
	<a id="mobile-logo"
		onclick="location.href='/controller/cst/home/homeImage.do'">C#</a> <a
		id="mobile-menu-toggle"> <img
		src="/controller/resources/img/mobile-menu-toggle-button.png"
		alt="메뉴펼치기"></a>
	<menu id="gnb">
		<li onclick="location.href='homeImage.do'">HOME</li>
		<li onclick="location.href='/controller/cst/menu/menuList.do'">
			MENU
			<div class="submenu">
				<menu>
					<li onclick="location.href='/controller/cst/menu/menuList.do'">MENU
						LIST</li>
					<li onclick="location.href='/controller/cst/menu/menuInfo.do'">MENU
						INFO</li>
				</menu>
			</div>
		</li>
		<li id="desktop-logo">C#</li>
		<li onclick="location.href='/controller/cst/order/advanceOrder.do'">
			ORDER
			<div class="submenu">
				<menu>
					<li onclick="location.href='/controller/cst/order/advanceOrder.do'">ADVANCE
						ORDER</li>
					<li onclick="location.href='/controller/cst/order/orderList.do'">ORDER
						LIST</li>
				</menu>
			</div>

		</li>
		<li onclick="location.href='/controller/cst/about/about.do'">ABOUT
		</li>
		<li>Membership
			<div class="submenu">
				<!-- 임시방편 -->
				<menu>
					<c:choose>
						<c:when test="${sessionScope.login==null}">
							<f:form id="mbsF" method="post">
								<li onclick="login()">LOGIN</li>
								<li onclick="join()">JOIN</li>
							</f:form>
						</c:when>
						<c:when test="${sessionScope.login.levelCode=='F'}">
							<f:form id="mbsF" method="post">
								<li onclick="logout()">LOGOUT</li>
								<li onclick="join()">JOIN</li>
							</f:form>
						</c:when>
						<c:when
							test="${sessionScope.login.levelCode=='N'or
								sessionScope.login.levelCode=='V'or
								sessionScope.login.levelCode=='B'}">
							<f:form id="mbsF" method="post">
								<li onclick="logout()">LOGOUT</li>
								<li onclick="myPage()">MY C#</li>
								<li onclick="calendar()">Calendar</li>
							</f:form>
						</c:when>
					</c:choose>
				</menu>
			</div>
		</li>
	</menu>
	<%-- <menu id="mbs">
			<c:choose>
				<c:when test="${sessionScope.login==null}">
					<f:form id="mbsF" method="post">
						<li onclick="login()">LOGIN</li>
						<li onclick="join()">JOIN</li>
					</f:form>
				</c:when>
				<c:when test="${sessionScope.login.levelCode=='F'}">
					<f:form id="mbsF" method="post">
						<li onclick="logout()">LOGOUT</li>
						<li onclick="join()">JOIN</li>
					</f:form>
				</c:when>
				<c:when test="${sessionScope.login.levelCode=='N'or
								sessionScope.login.levelCode=='V'or
								sessionScope.login.levelCode=='B'}">
					<f:form id="mbsF" method="post">
						<li onclick="logout()">LOGOUT</li>
						<li onclick="myPage()">MY C#</li>
						<li onclick="calendar()">Calendar</li>
					</f:form>
				</c:when>
			</c:choose>
		</menu> --%>

</header>
