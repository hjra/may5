<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/CShop/resources/css/orderDetail.css" rel="stylesheet">

<h1>회원수취정보</h1>

<p><strong>*</strong>는 필수입력 항목입니다</p>

<f:form action="orderReceiverInfo.do" method="post" commandName="orders">
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
						<th scope="row"><label for="orderAmount"><strong>*</strong>케이크 수량</label></th>
						<td>
							<input type="number" min="1" max="10" step="1"  name="orderAmount" required="required">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for=""><strong>*</strong>옵션선택</label></th>
						<td>
							<c:forEach var="optionChoose" items="${optionPrice }" end="5">
								<input type="radio" value="${optionChoose.optionType }" 
										name="optionType" required="required"> ${optionChoose.optionType } ${optionChoose.optionPrice }원<br>
							</c:forEach>
							
						</td>
					</tr>
					
					<tr>
						<th scope="row"><label for="cardMessage">카드문구</label></th>
						<td>
							<input type="text" name="cardMessage" placeholder="ex)생일축하합니다" />
						</td>
					</tr>
					<!-- <tr>
						<th scope="row"><label for="fu">동영상 추가</label></th>
						<td>
							<input type="file" />
						</td>
					</tr> -->
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


