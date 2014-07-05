<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

VIP LIST 화면
<table border="1">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>회원등급</th>
		<th>가입일</th>
		<th>생년월일</th>
		<th>전화번호</th>
	</tr>
	<c:forEach items="${customer}" var="customer">
		<tr>
			<td>${customer.cstId}</td>
			<td>${customer.cstName}</td>
			<td>${customer.levelName}</td>
			<td>${customer.cstJoinDate}</td>
			<td>${customer.cstBirthday}</td>
			<td>${customer.cstCP}</td>
		</tr>
	</c:forEach>
</table>