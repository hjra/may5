<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/controller/resources/css/dlvNotice.css" rel="stylesheet">
	주문정보조회(수정중)
	<br>
	<table class="board" border="1" >

		<caption></caption>
		<colgroup>
			<%-- <col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="15%">
			<col width="10%">
			<col width="70px">
			<col width="50%"> --%>
		</colgroup>
		<thead>
			<tr>
				<!-- <th scope="col">주문일자</th>
				<th scope="col">주문번호</th>
				<th scope="col">상품명</th>
				<th scope="col">상품금액</th>
				<th scope="col">처리현황</th>
				<th scope="col">상세내역</th>
				<th scope="col">취소</th> -->
			</tr>
		</thead>
		<tbody>
		<%-- <c:forEach var="orders" items="${orderList}">
			<tr>
				<td class="oorderDate" >${orders.orderDate} </td>
				<td class="oorderCode">${orders.orderCode}${orders.orderDate}${orders.sameTimeCount}${orders.itemId}</td>
				<td class="oitemName">${orders.itemName}</td>
				<td class="oprice">${orders.price}</td>
				<td class="oceck">처리현황</td>
				<td class="oceck">상세내역</td>
				<td id="dsend"><input type="button"
					value="취소" style="width: 10%; height: 22px;"></td>
			</tr>
		</c:forEach> --%>
		</tbody>
	</table>