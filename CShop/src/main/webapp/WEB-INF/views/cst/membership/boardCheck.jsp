<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
게시글의 암호체크페이지 입니다.
<p>비밀번호: <input type="password" name="passwd" size="20">

<p><f:form action="boardEdit.do" method="Post">
	<input type="submit" value="입력완료">
	</f:form>
	
	
<!--  <P><a href="/controller/cst/membership/boardEdit.do">게시글 수정페이지</a> -->
</body>
</html>