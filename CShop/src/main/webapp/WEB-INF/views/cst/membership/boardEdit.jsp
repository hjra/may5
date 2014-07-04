<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<h1>게시글 수정 페이지으로 이동하셨습니다!!!</h1>
<form action = "board.do" method = "post">
제목 : <input type = "text" name = "title" size = "20" /><br>
작성자 : <input type = "text" name = "writerName" /><br>
글 암호 : <input type = "password" name = "password" /><br>
글 내용 : <br>
      <textarea name = "content" cols = "40" rows = "5"></textarea>
<br>
<f:form action="board.do" method="Post">
	<input type="submit" value="게시글올리기">
	</f:form>
<f:form action="board.do" method="Post">
	<input type="submit" value="삭제">
	</f:form>	
	
</form>
