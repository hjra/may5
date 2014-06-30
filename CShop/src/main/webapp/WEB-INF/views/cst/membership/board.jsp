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

<h1>게시판.jsp로 이동완료</h1>
<P><a href="boardCheck.do">(게시판 글 제목3)</a><!-- 같은 폴더에서 jsp가 이동하므로 이렇게 써도 된다 -->

<p><f:form action="boardWriteForm.do" >
	<input type="submit" value="글쓰기">
	</f:form>

</body>
</html>