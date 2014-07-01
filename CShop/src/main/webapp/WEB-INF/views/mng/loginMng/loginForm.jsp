<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	관리자 페이지 첫 화면
	<br>
<%-- 절대경로 <f:form action="/controller/mng/loginMng/loginProcess.do" method="Post"> --%>
	<f:form action="../loginMng/loginProcess.do" method="Post">
		<input type="submit" value="SIGN UP">
	</f:form>
