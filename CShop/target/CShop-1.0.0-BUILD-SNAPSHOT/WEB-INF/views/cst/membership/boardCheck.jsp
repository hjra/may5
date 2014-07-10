<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
게시글의 암호체크페이지 입니다.
<p>비밀번호: <input type="password" name="passwd" size="20">
현재 접속한 글번호: ${boardCode}<br>

<p><f:form action="boardEdit.do" method="Post">
	<input type="submit" value="입력완료">
	<input type="hidden" name="boardCode" value="${boardCode}">
	</f:form>