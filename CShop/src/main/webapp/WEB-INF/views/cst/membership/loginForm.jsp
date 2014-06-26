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
	로그인 입력폼
	<f:form action="../membership/loginProcess.do" method="Post">
	
		<input type="submit" value="SIGN UP">
	</f:form>
	<br>
	<hr>
	<a href="../membership/scInfoForm.do">SEARCH ID / PASSWORD</a> | 
	<a href="../membership/termsForm.do">JOIN</a>
</body>
</html>