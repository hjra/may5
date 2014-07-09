<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/CShop/resources/css/orderDetail.css" rel="stylesheet">

<h1>회원수취정보</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="advanceOrderPayment.do" method="post">
	<fieldset>
		<legend>정보입력</legend>
			<table class="b" border="1"  summary="수취에 관련된 정보입력">
				<caption>수취인 정보 입력</caption>
				<colgroup>
					<col width="100px">
					<col width="250px">
				</colgroup>
				<tbody>
					<c:choose>
					<c:when test="${sessionScope.cstLogin.cstId == null }">
					<tr>
						<th scope="row"><label for="name"><strong>*</strong>이름</label></th>
						<td>
							<input type="text" id="name" placeholder="ex)홍명보" required="required" />
						</td>
					</tr>
					</c:when>
					<c:otherwise>
					<tr>
						<th scope="row"><label for="orinfoyn"><strong>*</strong>기존정보 사용여부</label></th>
						<td>
							
							<input type="radio" value="uy" name="receive" required="required"  checked="checked" 
								onclick="location.href='cstExistingInfo.do?cstId=${sessionScope.cstLogin.cstId}'"/>기존정보사용<br>
							<input type="radio" value="un" name="receive" required="required" />새로입력
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="name"><strong>*</strong>이름</label></th>
						<td>
							<input type="text" id="name" placeholder="ex)홍명보" required="required" value="${cstExistingInfo.cstName}"/>
						</td>
					</tr>
					</c:otherwise>
					</c:choose>
					
					<tr>
						<th scope="row"><label for="cpnumber"><strong>*</strong>휴대전화번호</label></th>
						<td>
							<input type="tel" id="cpnumber" placeholder="ex)01098765432" required="required" value="${cstExistingInfo.cstCP}"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="email">이메일</label></th>
						<td>
							<input type="email" id="email" placeholder="ex)id@domain.com" value="${cstExistingInfo.cstEmail}"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="address"><strong>*</strong>주소</label></th>
						<td>
							<input type="text" style="width: 500px" id="address" required="required" 
								value="${cstExistingInfo.sido } ${cstExistingInfo.sigungu } ${cstExistingInfo.dongubmyon } 
									${cstExistingInfo.dong } ${cstExistingInfo.li } ${cstExistingInfo.doromyong } 
									${cstExistingInfo.buildingNum1 }-${cstExistingInfo.buildingNum2 } ${cstExistingInfo.sigunguBuildingName } 
									${cstExistingInfo.cstDetailAddress }"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvinfoyn"><strong>*</strong>배송 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive1" required="required"/>배송(2500원)<br>
							<input type="radio" value="dn" name="receive1" required="required"/>직접수령
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvwarn">배송시 주의사항</label></th>
						<td>
							<input type="text" id="dlvwarn"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="askyn"><strong>*</strong>조르기 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive2" required="required"/>조르기<br>
							<input type="radio" value="dn" name="receive2" required="required"/>직접구매
						</td>
					</tr>
				</tbody>
			</table>
			<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/></p>
	</fieldset>
</f:form>
