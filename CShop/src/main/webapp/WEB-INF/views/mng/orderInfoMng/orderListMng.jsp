<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/controller/resources/css/dlvNotice.css" rel="stylesheet">
	�ֹ�������ȸ(������)
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
				<!-- <th scope="col">�ֹ�����</th>
				<th scope="col">�ֹ���ȣ</th>
				<th scope="col">��ǰ��</th>
				<th scope="col">��ǰ�ݾ�</th>
				<th scope="col">ó����Ȳ</th>
				<th scope="col">�󼼳���</th>
				<th scope="col">���</th> -->
			</tr>
		</thead>
		<tbody>
		<%-- <c:forEach var="orders" items="${orderList}">
			<tr>
				<td class="oorderDate" >${orders.orderDate} </td>
				<td class="oorderCode">${orders.orderCode}${orders.orderDate}${orders.sameTimeCount}${orders.itemId}</td>
				<td class="oitemName">${orders.itemName}</td>
				<td class="oprice">${orders.price}</td>
				<td class="oceck">ó����Ȳ</td>
				<td class="oceck">�󼼳���</td>
				<td id="dsend"><input type="button"
					value="���" style="width: 10%; height: 22px;"></td>
			</tr>
		</c:forEach> --%>
		</tbody>
	</table>