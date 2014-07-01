<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
<link href="/controller/resources/css/dlvNotice.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="/controller/resources/js/web.js"></script>
<title>Insert title here</title>
</head>
<body>
	알리미
	<br>
	<f:form action="/controller/mng/deliveryMng/dlvmImage.do" method="post">
	<select name="dcategory">
			<option value="all">모두</option>
			<option value="orderCode">주문번호</option>
			<option value="cstId">고객아이디</option>
		</select>
	<input type="text" name="ordersearch" value="cstId">
		<input type="submit" value="조회" />
		</f:form>

	<table class="board" border="1" cellspacing="0"  >

		<caption></caption>
		<colgroup>
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="15%">
			<col width="10%">
			<col width="70px">
			<col width="50%">
			<col width="70px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">고객등급</th>
				<th scope="col">아이디</th>
				<th scope="col">주문번호</th>
				<th scope="col">확인</th>
				<th scope="col">이미지</th>
				<th scope="col">메세지</th>
				<th scope="col">전송</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="orders" items="${alimilist}">
			<tr>
				<td class="dnumber" >번호 </td>
				<td class="dlevelCode">${orders.levelCode}</td>
				<td class="dcstId">${orders.cstId}</td>
				<td class="dorderCode">${orders.orderCode}${orders.orderDate}${orders.sameTimeCount}${orders.itemId}</td>
				<td class="dceck">확인</td>
				<td id="dImg"><input type="button"
					value="불러오기" style="width: 90%; height: 23px;"></td>
				<td class="dnoticeComment">메세지  ${orders.noticeComment}</td>
				<td id="dsend"><input type="button"
					value="보냄" style="width: 80%; height: 22px;"></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/controller/mng/loginMng/loginForm.do">loginForm으로~</a>

</body>
</html>



