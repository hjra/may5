<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <link href="/CShop/resources/css/dlvNotice.css" rel="stylesheet"> -->
<script src="resources/js/table_array.js" type="text/javascript"></script>
<style type="text/css">
.clickable {cursor: pointer;}
.hover {text-decoration: underline;}
table{text-align:left;}
th{ background:#F90;}
.odd{ background: #FFC;}
.even{ background: #FF9;}
</style>
	주문정보조회(수정중)
	<br>
<!-- 	<table class="board" border="1" > -->
	<table class="sortable paginated">
		<caption></caption>
		<colgroup>
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="sorting">주문번호</th>
				<th scope="col" class="sorting">주문일자</th>
				<th scope="col" class="sorting">상품ID</th>
				<th scope="col" class="sorting">상품명</th>
				<th scope="col" class="sorting">옵션항목</th>
				<th scope="col" class="sorting">옵션가</th>
				<th scope="col" class="sorting">결제수단</th>
				<th scope="col" class="sorting">배송비</th>
				<th scope="col" class="sorting">주소</th>
				<th scope="col" class="sorting">수령자</th>
				<th scope="col" class="sorting">수령자휴대폰번호</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="orders" items="${orderListMng }">
				<tr>
					<td class="orderCodeMng">${orders.orderCode }${fn:replace(orders.orderDate,'-','')}${orders.sameTimeCount}${orders.itemId}</td>
					<td class="orderDateMng" >${orders.orderDate }</td>
					<td class="itemIdMng">${orders.itemId }</td>
					<td class="itemNameMng">${orders.itemName }</td>
					<td class="optionTypeMng">${orders.optionType }</td>
					<td class="optionPriceMng">${orders.optionPrice }</td>
					<td class="payTypeMng">${orders.payType }</td>
					<td class="dlvChargeMng">${orders.dlvCharge }</td>
					<td class="zipMng">${orders.sido } ${orders.sigungu } ${orders.dongubmyon } ${orders.dong } ${orders.li } ${orders.doromyong } ${orders.buildingNum1 }-${orders.buildingNum2 } ${orders.sigunguBuildingName } ${orders.orderDetailAddress } </td>
					<td class="receiverNameMng">${orders.receiverName }</td>
					<td class="receiverCPMng">${orders.receiverCP }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
