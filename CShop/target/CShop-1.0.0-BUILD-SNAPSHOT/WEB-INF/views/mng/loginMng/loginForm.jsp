<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	관리자 페이지 첫 화면
	<br>
	<f:form action="mngLoginProcess.do" method="Post" commandName="manager">
		<div>
			<f:input path="mngId" placeholder="USER ID" />
		</div>
		<div>
			<f:password path="mngPassword" placeholder="PASSWORD" />
		</div>
		<div>${errMsg}</div>
		<input type="submit" value="SIGN UP">
		<div>
			<input name="stayLogin" type="checkbox" value="T">Stay Signed in
		</div>
	</f:form>
