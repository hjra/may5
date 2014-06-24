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
	아이디찾기 성공화면
	<br>
	<a href="../membership/loginForm.do">로그인</a>
	<f:form action="../membership/scPasswordProcess.do" method="Post">
		<input type="submit" value="비밀번호 찾기">
	</f:form>
</body>
</html>