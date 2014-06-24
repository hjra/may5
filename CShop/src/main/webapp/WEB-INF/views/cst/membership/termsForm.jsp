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
	회원가입 동의폼
	<f:form action="../membership/joinForm.do" method="post">
		동의 상자 추가해야 함.
		<input type="submit" value="AGREE">
	</f:form>
	<a href="../home/homeImage.do">취소</a>
</body>
</html>