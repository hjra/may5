<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원정보 찾기폼
	<br>
	<f:form action="../membership/scIdProcess.do" method="post">
		<input type="submit" value="ID 찾기">
	</f:form>
	<br>
	<f:form action="../membership/scPasswordProcess.do">
		<input type="submit" value="PW 찾기">
	</f:form>
</body>
</html>