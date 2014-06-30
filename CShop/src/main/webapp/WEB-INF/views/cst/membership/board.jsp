<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<h1>게시판.jsp로 이동완료</h1>
<P><a href="/controller/cst/membership/boardCheck.do">(게시판 글 제목3)</a>

<p><f:form action="boardWriteForm.do" >
	<input type="submit" value="글쓰기">
	</f:form>
