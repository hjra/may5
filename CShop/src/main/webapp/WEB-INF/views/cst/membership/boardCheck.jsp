<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
게시글의 암호체크페이지 입니다.
<p>비밀번호: <td><input type="password" name="passwd" size="20"></td>

<p><f:form action="../membership/boardCheck.do" method="Post">
		<input type="submit" value="입력완료">
	</f:form>
 
</body>
</html>