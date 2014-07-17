<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!-- style -->
	<link href="/CShop/resources/css/login-layout.css" rel="stylesheet">
<div class="context-login" align="center">
	<div class="main"><h3>C# ADMIN</h3></div>
	<br>
	<f:form action="mngLoginProcess.do" method="Post" commandName="manager">
		<div>
			<f:input class="login-input" path="mngId" placeholder="USER ID" />
		</div>
		<div>
			<f:password class="login-input" path="mngPassword" placeholder="PASSWORD" />
		</div>
		<div>${errMsg}</div>
		<input class="button-login" type="submit" value="SIGN UP">
		<div>
			<input class="login-checkbox" name="stayLogin" type="checkbox" value="T">Stay Signed in
		</div>
	</f:form>
<a href="/CShop/homeImage.do">고객페이지</a>
</div>