<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
	<h1>결제정보</h1>
	<f:form method="post" action="payment.do" commandName="payment">
	<fieldset>
	<legend>결제방법선택</legend>
	
	<!-- html 시작 -->
	일반결제 :
	<c:forEach var="payKinds" items="${payKind }" >
		<input type="radio" name="payCode" value="${payKinds.payCode }" 
			onclick="div_OnOff(this.value,'${payKinds.payCode }');">${payKinds.payType }
	</c:forEach>
	<%-- <c:forEach var="payKinds" items="${payKind }" varStatus="status" end="0">
		<input type="radio" name="payCode" value="${payKinds.payCode }" 
			checked="checked" onclick="div_OnOff(this.value,'${payKinds.payCode }');">${payKinds.payType }
	</c:forEach>
	<c:forEach var="payKinds" items="${payKind }" varStatus="status" begin="1">
		<input type="radio" name="payCode" value="${payKinds.payCode }" 
			onclick="div_OnOff(this.value,'${payKinds.payCode }');">${payKinds.payType }
	</c:forEach> --%>

	<div id="1" style="display: block">
		카드구분 : 
		<c:forEach var="cardSections" items="${cardSection }" >
			<input type="radio" name="cardSectionCode" value="${cardSections.cardSectionCode }" 
				onclick="div_OnOff2(this.value,'${cardSections.cardSectionCode }+10');">${cardSections.cardSectionType }
		</c:forEach>
		<%-- <c:forEach var="cardSections" items="${cardSection }" varStatus="status" end="0">
			<input type="radio" name="cardsection" value="${cardSections.cardSectionCode }" 
				checked="checked" onclick="div_OnOff2(this.value,'${cardSections.cardSectionCode }+10');">${cardSections.cardSectionType }
		</c:forEach>
		<c:forEach var="cardSections" items="${cardSection }" varStatus="status" begin="1">
			<input type="radio" name="cardsection" value="${cardSections.cardSectionCode }" 
				onclick="div_OnOff2(this.value,'${cardSections.cardSectionCode }+10');">${cardSections.cardSectionType }
		</c:forEach> --%>
		
		<div id="11" style="display: block">카드종류 : 
			<select name="cardCode" id="selectBox"  title="cardKind">
				<c:forEach var="cardKinds" items="${cardKind }">
					<option value="${cardKinds.cardCode}">${cardKinds.cardName}</option>
				</c:forEach>
 			</select>
 			
 			<br>할부기간 : 
 			<select id="selectBox" name="termCode" title="installment" >
 				<c:forEach var="term" items="${installment }">
 					<option value="${term.termCode }">${term.installmentTerm }</option>
 				</c:forEach>
 			</select>
 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
		
		<div id="12" style="display: none">카드종류 : 
			<select id="selectBox" name="cardCode" title="cardKind">
				<c:forEach var="cardKinds" items="${cardKind }">
					<option value="${cardKinds.cardCode}">${cardKinds.cardName}</option>
				</c:forEach>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox" name="cardCode" title="installment" >
 				<c:forEach var="term" items="${installment }">
 					<option value="${term.termCode }">${term.installmentTerm }</option>
 				</c:forEach>
  								
 			</select>

 			<br>주문자동의 : <input id="allAgreement1" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement1" type="checkbox" id="agreement1">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement1" type="checkbox" id="agreement1">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement1" type="checkbox" id="agreement1">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
	</div>
	<div id="2" style="display: none">
		
		현금영수증 :
		<c:forEach var="cashReceiptRequestInfoSaves" items="${cashReceiptRequestInfoSave }">
			<input type="radio" name="saveCode" value="${cashReceiptRequestInfoSaves.saveCode }" 
				onclick="div_OnOff3(this.value,'${cashReceiptRequestInfoSaves.saveCode }');">${cashReceiptRequestInfoSaves.saveType }
		</c:forEach>
	<%-- 	<c:forEach var="cashReceiptRequestInfoSaves" items="${cashReceiptRequestInfoSave }" varStatus="status" end="0">
			<input type="radio" name="saveCode" value="${cashReceiptRequestInfoSaves.saveCode }" 
				checked="checked" onclick="div_OnOff3(this.value,'${cashReceiptRequestInfoSaves.saveCode }');">${cashReceiptRequestInfoSaves.saveType }
		</c:forEach>
		<c:forEach var="cashReceiptRequestInfoSaves" items="${cashReceiptRequestInfoSave }" varStatus="status" begin="1">
			<input type="radio" name="saveCode" value="${cashReceiptRequestInfoSaves.saveCode }" 
				onclick="div_OnOff3(this.value,'${cashReceiptRequestInfoSaves.saveCode }');">${cashReceiptRequestInfoSaves.saveType }
		</c:forEach>
 --%>		
		
		
			
			<div id="T" style="display: block">
				공제용도 : 
				<c:forEach var="deductions" items="${deduction }" varStatus="status" >
					<input type="radio" name="deductionCode" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<%-- <c:forEach var="deductions" items="${deduction }" varStatus="status" begin="1" end="1">
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						checked="checked" onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="2" >
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach> --%>
				
				<div id="101" style="display: block">신청수단 : 
					<select id="selectBoxValue" name="wayCode" title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }" varStatus="status" begin="1" end="3">
					
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect"></div>
				</div>
				
				<div id="102" style="display: none" >신청수단 : 
					<select id="selectBoxValue" name="wayCode" title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }" varStatus="status" begin="1" end="4">
						
						<%--	<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						 </c:forEach>
						<c:forEach var="requestWay" name="wayCode" items="${cashReceiptRequestWay }" 
										varStatus="status" begin="3" end="4"> --%>
							<c:if test="${status.index!=2 }">		
							  <option value="${requestWay.wayCode }">213213213${requestWay.wayType }</option>
							</c:if>
						</c:forEach>
					</select>
					<div id="inputSelect1"></div>
				</div>
				
			</div>
			<div id="F" style="display: none">
				공제용도 : 
				<c:forEach var="deductions" items="${deduction }" varStatus="status" >
					<input type="radio" name="deductionCode" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<%-- <c:forEach var="deductions" items="${deduction }" varStatus="status" begin="1" end="1">
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						checked="checked" onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="2" >
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach> --%>
				
				<div id="101" style="display: block">신청수단 : 
					<select id="selectBoxValue" name="wayCode" title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }" varStatus="status" begin="1" end="3">
					
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect"></div>
				</div>
				<div id="102" style="display: none" >신청수단 : 
					<select id="selectBoxValue" name="wayCode" title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }" varStatus="status" begin="1" end="4">
						
						<%--	<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						 </c:forEach>
						<c:forEach var="requestWay" name="wayCode" items="${cashReceiptRequestWay }" 
										varStatus="status" begin="3" end="4"> --%>
							<c:if test="${status.index!=2 }">		
							  <option value="${requestWay.wayCode }">213213213${requestWay.wayType }</option>
							</c:if>
						</c:forEach>
					</select>
					<div id="inputSelect1"></div>
				</div>
			</div>
			
			<div id="N" style="display: none">
				
			</div>
			<br>주문자동의 : <input id="allAgreement2" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement2" type="checkbox" id="agreement2">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement2" type="checkbox" id="agreement2">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement2" type="checkbox" id="agreement2">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
	</div>
		
	<div id="3" style="display: none">
		휴대폰 결제안내 : 휴대폰 결제는 통신사에 따라 결제 한도 금액이 다릅니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		휴대폰 결제의 경우 가입하신 이동통신사에서 증빙을 발급 받을 수 있습니다.<br>
		<br>주문자동의 : <input id="allAgreement3" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement3" type="checkbox" id="agreement3">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement3" type="checkbox" id="agreement3">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement3" type="checkbox" id="agreement3">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
	</div>
		<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/>
				</p>
	</fieldset>
	</f:form>

<script type="text/javascript"></script>
<script src="resources/script/advanceOrder.js"></script>
