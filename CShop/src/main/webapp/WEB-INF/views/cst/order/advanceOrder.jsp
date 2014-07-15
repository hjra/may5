<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/CShop/resources/css/orderDetail.css" rel="stylesheet">

<h1>예약주문페이지</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<%-- <f:form action="orderDetail.do" method="post"> --%>
<f:form action="advanceOrder.do" method="post">
	<fieldset>
		<legend>선물하기 - 옵션</legend>
			<table border="1"  summary="옵션정보입력">
				<caption>옵션 선택</caption>
				<colgroup>
					<col style="width: 200px"/>
					<col style="width: 500px"/>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="ca"><strong>*</strong>케이크 수량</label></th>
						<td>
							<input type="number" min="1" max="10" step="1"  id="ca" required="required">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for=""><strong>*</strong>꽃다발</label></th>
						<td>
							<c:forEach var="optionFlower" items="${optionPrice }" varStatus="status" end="1">
							<input type="radio" value="${optionFlower.optionCode }" name="chooseFlower"/>${optionFlower.optionType } ${optionFlower.optionPrice }
							</c:forEach>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for=""><strong>*</strong>카드</label></th>
						<td>
							<c:forEach var="optionCard" items="${optionPrice }" varStatus="status" begin="2" end="4">
							<input type="radio" value="${optionCard.optionCode }" name="chooseCard" />${optionCard.optionType } ${optionCard.optionPrice }
							</c:forEach>
						</td>
					</tr>
					
					<tr>
						<th scope="row"><label for="cm">카드문구</label></th>
						<td>
							<input type="text" id="cm" placeholder="ex)생일축하합니다" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="fu">동영상 추가</label></th>
						<td>
							<input type="file" />
						</td>
					</tr>
				</tbody>
			</table>
			<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
					<c:choose>
						<c:when test="${sessionScope.cstLogin.cstId == null}">
							<input type="hidden" value="${sessionScope.cstLogin.cstId}" name="cstId">
						</c:when>
						<c:otherwise>
							<input type="hidden" value="${sessionScope.cstLogin.cstId}" name="cstId">
						</c:otherwise>
					</c:choose>
				<input type="submit" value="다음">
					
			</p>
	</fieldset>
</f:form>
