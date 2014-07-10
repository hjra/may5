<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
table.tblCst {background:#E2F2D3; width:90%; margin:0 auto; text-align:right}
.tblCst td {border-bottom:1px solid #dcdac2; padding:5px; text-align:center}
.tblCst th {border:1px solid #33904E; background:#8FC147; color:#fff; text-align:center}
</style>

<div>
	총 회원 ${count}명 O: 비회원, C: 일반회원, V: VIP, B: 관심고객
	<select>
		<option value="${cstId}">아이디</option>
		<option value="${cstName}">이름</option>
	</select>
	<input type="text" placeholder="검색할 내용">
	<input type="button" value="검색">
</div>
<div>
	<input type="button" value="E-mail 전송" >
	<input type="button" value="글쓰기 가능" >
	<input type="button" value="글쓰기 불가" >
	<input type="button" value="관심고객 등록" >
	<input type="button" value="관심고객 해제" >
</div>
<table class="tblCst">
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
			<td>${customer.levelCode}</td>
			<td>${customer.cstJoinDate}</td>
			<td>${customer.cstBirthday}</td>
			<td>${customer.cstCP}</td>
		</tr>
	</c:forEach>
</table>