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
주문상세페이지<br>
	<!--  ../deliveryMng/dlvNotice.do 주소값 고쳐야할 부분  -->
	<f:form action="../deliveryMng/dlvmImage.do" method="get">
	입력<input type="text" name="cstId">
	<input type="submit"  value="조회"/>
	</f:form>
	<a href="/controller/mng/loginMng/loginForm.do">loginForm으로~</a>
</body>
</html>



