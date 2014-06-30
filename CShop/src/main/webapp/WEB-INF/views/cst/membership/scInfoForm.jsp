<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	회원정보 찾기폼
	<br>
	<f:form action="scIdProcess.do" method="post">
		<input type="submit" value="ID 찾기">
	</f:form>
	<br>
	<f:form action="scPasswordProcess.do">
		<input type="submit" value="PW 찾기">
	</f:form>
