<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
	function cstLogin() {
		document.getElementById("mbsF").action = "cstLoginForm.do";
		document.getElementById("mbsF").submit();
	}
	function cstLogout() {
		document.getElementById("mbsF").action = "cstLogoutProcess.do";
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
	function mngLogin() {
		document.getElementById("mbsF").action = "mngLoginForm.do";
		document.getElementById("mbsF").submit();
	}
	function mngLogout() {
		document.getElementById("mbsF").action = "mngLogoutProcess.do";
		document.getElementById("mbsF").submit();
	}
	
</script>
<header id="master-header">
	<a id="mobile-logo" onclick="location.href='homeImage.do'">C#</a> <a
		id="mobile-menu-toggle"> 
		<img src="/CShop/resources/img/mobile-menu-toggle-button.png"
		alt="메뉴펼치기"></a>
	<menu id="gnb">
		<li onclick="location.href='homeImage.do'">HOME</li>
		<li>
			<a href="menuList.do">MENU</a>
			<div class="submenu">
				<menu>
					<li onclick="location.href='menuList.do'">MENU LIST</li>
				</menu>
			</div>
		</li>
		<li onclick="location.href='/CShop/'" id="desktop-logo">C#</li>

		<li>
			<a href="advanceOrder.do">ORDER</a>
			<div class="submenu">
				<menu>
					<li onclick="location.href='advanceOrder.do'">ADVANCE ORDER</li>
					<li onclick="location.href='orderSearch.do'">ORDER LIST</li>
				</menu>
			</div>
		</li>
		
		<li onclick="location.href='about.do'">ABOUT</li>
		<li style="font-size: 8px; left: 200px;">Membership
			<div class="submenu">
				<!-- 임시방편 -->
				<menu>
					<c:choose>
						<c:when
							test="${sessionScope.cstLogin==null and sessionScope.mngLogin==null
						and requestScope['javax.servlet.forward.request_uri']!='/CShop/mngLoginForm.do'}">
							<f:form id="mbsF" method="post">
								<li onclick="cstLogin()">LOGIN</li>
								<li onclick="join()">JOIN</li>
							</f:form>
						</c:when>
						<c:when test="${sessionScope.cstLogin.levelCode=='F'}">
							<f:form id="mbsF" method="post">
								<li onclick="cstLogout()">LOGOUT</li>
								<li onclick="join()">JOIN</li>
							</f:form>
						</c:when>
						<c:when
							test="${sessionScope.cstLogin.levelCode=='N'or
								sessionScope.cstLogin.levelCode=='V'or
								sessionScope.cstLogin.levelCode=='B'}">
							<f:form id="mbsF" method="post">
								<li onclick="cstLogout()">LOGOUT</li>
								<li onclick="myPage()">MY C#</li>
								<li onclick="calendar()">Calendar</li>
							</f:form>
						</c:when>
						<c:when
							test="${sessionScope.mngLogin==null
							and requestScope['javax.servlet.forward.request_uri']=='/CShop/mngLoginForm.do'}">
							<f:form id="mbsF" method="post">
								<li onclick="mngLogin()">LOGIN</li>
							</f:form>
						</c:when>
						<c:when test="${sessionScope.mngLogin!=null}">
							<f:form id="mbsF" method="post">
								<li onclick="mngLogout()">LOGOUT</li>
							</f:form>
						</c:when>
					</c:choose>
				</menu>
			</div>			
		</li>
		&nbsp&nbsp&nbsp
		<li style="font-size: 8px; left: 200px;" onclick="location.href='mngLoginForm.do'">ADMIN</li>
		
		
		
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
