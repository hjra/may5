<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
	MY C# 기본 페이지
	<br>
	<form action="modifyInfoForm.do" method="get">
		<input type="hidden" name="zipCode" value="${sessionScope.cstLogin.zipCode}">
		<input type="submit" value="회원정보수정">
	</form>
	<br>
	<a href="board.do">Q&amp;A</a>
	<br>
	<a href="deleteMemberInfoForm.do">회원탈퇴</a>
