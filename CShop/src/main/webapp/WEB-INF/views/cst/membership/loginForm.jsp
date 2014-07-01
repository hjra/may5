<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	로그인 입력폼
	<f:form action="loginProcess.do" method="Post">
	
		<input type="submit" value="SIGN UP">
	</f:form>
	<br>
	<hr>
	<a href="/controller/cst/membership/scInfoForm.do">SEARCH ID / PASSWORD</a> | 
	<a href="/controller/cst/membership/termsForm.do">JOIN</a>
