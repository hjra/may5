<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br><br><br><br>
<h1>결제완료</h1>
<br><br><br><br><br><br><br><br>
<f:form action="" method="post">
${orders.installmentTerm }
</f:form>