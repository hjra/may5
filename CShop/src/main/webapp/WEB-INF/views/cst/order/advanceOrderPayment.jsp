<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
/* checkbox 전체선택, 전체해제 */
$(document).ready(function(){
	$('#allAgreement').click(function(){
		if($("#allAgreement").is(":checked")){
			$('input:checkbox[id^=agreement]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement]:checked').prop("checked", false);
		}
	});
	
	$('#allAgreement1').click(function(){
		if($("#allAgreement1").is(":checked")){
			$('input:checkbox[id^=agreement1]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement1]:checked').prop("checked", false);
		}
	});
	
	$('#allAgreement2').click(function(){
		if($("#allAgreement2").is(":checked")){
			$('input:checkbox[id^=agreement2]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement2]:checked').prop("checked", false);
		}
	});
	
	$('#selectBoxValue').click(function(){
		$('#inputSelect').empty();
		if($('#selectBoxValue').val() == "0"){
			var input = '<input type="text" val="" placeholder="휴대폰번호를 입력하세요.">';
			$('#inputSelect').append(input);	
		}else if($('#selectBoxValue').val() == "1"){
			var input = '<input type="text" val="" placeholder="현금영수증카드번호를 입력하세요.">';
			$('#inputSelect').append(input);
		}else{
			var input = '<input type="text" val="" placeholder="주민등록번호를 입력하세요.">';
			$('#inputSelect').append(input);	
		}
		
	});
	
	$('#selectBoxValue1').click(function(){
		$('#inputSelect1').empty();
		if($('#selectBoxValue1').val() == "0"){
			var input = '<input type="text" val="" placeholder="휴대폰번호를 입력하세요.">';
			$('#inputSelect1').append(input);	
		}else if($('#selectBoxValue1').val() == "1"){
			var input = '<input type="text" val="" placeholder="현금영수증카드번호를 입력하세요.">';
			$('#inputSelect1').append(input);
		}else{
			var input = '<input type="text" val="" placeholder="사업자등록번호를 입력하세요.">';
			$('#inputSelect1').append(input);	
		}
		
	});
	
});


</script>

<script>
		function div_OnOff(v, id) {
			// 라디오 버튼 value 값 조건 비교
			if (v == "1") {
				document.getElementById("2").style.display = "none"; // 숨김
				document.getElementById("3").style.display = "none"; // 숨김
				document.getElementById("1").style.display = ""; // 보여줌
			} else if (v == "2") {
				document.getElementById("1").style.display = "none"; // 숨김
				document.getElementById("3").style.display = "none"; // 숨김
				document.getElementById("2").style.display = ""; // 보여줌
			} else {
				document.getElementById("1").style.display = "none"; // 숨김
				document.getElementById("2").style.display = "none"; // 숨김
				document.getElementById("3").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff2(v2, id) {
			if (v2 == "1") {
				document.getElementById("12").style.display = "none"; // 숨김
				document.getElementById("11").style.display = ""; // 보여줌
			} else {
				document.getElementById("11").style.display = "none"; // 숨김
				document.getElementById("12").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff3(v3, id) {
			if (v3 == "T") {
				document.getElementById("F").style.display = "none"; // 숨김
				document.getElementById("N").style.display = "none"; // 숨김
				document.getElementById("T").style.display = ""; // 보여줌
			} else if(v3 == "F"){
				document.getElementById("T").style.display = "none"; // 숨김
				document.getElementById("N").style.display = "none"; // 숨김
				document.getElementById("F").style.display = ""; // 보여줌
			} else {
				document.getElementById("T").style.display = "none"; // 숨김
				document.getElementById("F").style.display = "none"; // 숨김
				document.getElementById("N").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff4(v4, id) {
			if (v4 == "1") {
				document.getElementById("102").style.display = "none"; // 숨김
				document.getElementById("101").style.display = ""; // 보여줌
			} else {
				document.getElementById("101").style.display = "none"; // 숨김
				document.getElementById("102").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff5(v5, id) {
			if (v5 == "1") {
				document.getElementById("idn").style.display = "none"; // 숨김
				document.getElementById("rcn").style.display = "none"; // 숨김
				document.getElementById("cpn").style.display = ""; // 보여줌
			} else if (v5 == "2") {
				document.getElementById("rcn").style.display = "none"; // 숨김
				document.getElementById("cpn").style.display = "none"; // 숨김
				document.getElementById("idn").style.display = ""; // 보여줌
			} else {
				document.getElementById("idn").style.display = "none"; // 숨김
				document.getElementById("cpn").style.display = "none"; // 숨김
				document.getElementById("rcn").style.display = ""; // 보여줌
			}
		}
		
	</script>
	<!-- 스크립트 끝 -->

	<h1>결제정보</h1>
	<f:form method="post" action="">
	<fieldset>
	<legend>결제방법선택</legend>
	
	<!-- html 시작 -->
	일반결제 :
	<c:forEach var="payKinds" items="${payKind }" varStatus="status" end="0">
		<input type="radio" name="paykind" value="${payKinds.payCode }" 
			checked="checked" onclick="div_OnOff(this.value,'${payKinds.payCode }');">${payKinds.payType }
	</c:forEach>
	<c:forEach var="payKinds" items="${payKind }" varStatus="status" begin="1">
		<input type="radio" name="paykind" value="${payKinds.payCode }" 
			onclick="div_OnOff(this.value,'${payKinds.payCode }');">${payKinds.payType }
	</c:forEach>

	<div id="1" style="display: block">
		카드구분 : 
		<c:forEach var="cardSections" items="${cardSection }" varStatus="status" end="0">
			<input type="radio" name="cardsection" value="${cardSections.cardSectionCode }" 
				checked="checked" onclick="div_OnOff2(this.value,'${cardSections.cardSectionCode }+10');">${cardSections.cardSectionType }
		</c:forEach>
		<c:forEach var="cardSections" items="${cardSection }" varStatus="status" begin="1">
			<input type="radio" name="cardsection" value="${cardSections.cardSectionCode }" 
				onclick="div_OnOff2(this.value,'${cardSections.cardSectionCode }+10');">${cardSections.cardSectionType }
		</c:forEach>
		
		<div id="11" style="display: block">카드종류 : 
			<select id="selectBox"  title="cardKind">
				<c:forEach var="cardKinds" items="${cardKind }">
					<option value="${cardKinds.cardCode}">${cardKinds.cardName}</option>
				</c:forEach>
 			</select>
 			
 			<br>할부기간 : 
 			<select id="selectBox"  title="installment" >
 				<c:forEach var="term" items="${installment }">
 					<option value="${term.termCode }">${term.installmentTerm }</option>
 				</c:forEach>
  								
 			</select>
 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
		
		<!-- <div id="corcard" style="display: none">카드종류 :  -->
		<div id="12" style="display: none">카드종류 : 
			<select id="selectBox"  title="cardKind">
				<c:forEach var="cardKinds" items="${cardKind }">
					<option value="${cardKinds.cardCode}">${cardKinds.cardName}</option>
				</c:forEach>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox"  title="installment" >
 				<c:forEach var="term" items="${installment }">
 					<option value="${term.termCode }">${term.installmentTerm }</option>
 				</c:forEach>
  								
 			</select>

 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
	</div>
	<div id="2" style="display: none">
		
		현금영수증 :
		<c:forEach var="cashReceiptRequestInfoSaves" items="${cashReceiptRequestInfoSave }" varStatus="status" end="0">
			<input type="radio" name="cashreceiptrequestsave" value="${cashReceiptRequestInfoSaves.saveCode }" 
				checked="checked" onclick="div_OnOff3(this.value,'${cashReceiptRequestInfoSaves.saveCode }');">${cashReceiptRequestInfoSaves.saveType }
		</c:forEach>
		<c:forEach var="cashReceiptRequestInfoSaves" items="${cashReceiptRequestInfoSave }" varStatus="status" begin="1">
			<input type="radio" name="cashreceiptrequestsave" value="${cashReceiptRequestInfoSaves.saveCode }" 
				onclick="div_OnOff3(this.value,'${cashReceiptRequestInfoSaves.saveCode }');">${cashReceiptRequestInfoSaves.saveType }
		</c:forEach>
		
		
		
			
			<div id="T" style="display: block">
				공제용도 : 
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="1" end="1">
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						checked="checked" onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="2" >
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				
				
				
				<div id="101" style="display: block">신청수단 : 
					<select id="selectBoxValue"  title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }">
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect"></div>
				</div>
				<div id="102" style="display: none" >신청수단 : 
					<select id="selectBoxValue"  title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }">
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect1"></div>
				</div>
				
			</div>
			
			<div id="F" style="display: none">
				공제용도 : 
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="1" end="1">
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						checked="checked" onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				<c:forEach var="deductions" items="${deduction }" varStatus="status" begin="2" >
					<input type="radio" name="deduction" value="${deductions.deductionCode }" 
						onclick="div_OnOff4(this.value,'${deductions.deductionCode }+100');">${deductions.deductionName }
				</c:forEach>
				
				<div id="101" style="display: block">신청수단 : 
					<select id="selectBoxValue"  title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }">
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect"></div>
				</div>
				<div id="102" style="display: none" >신청수단 : 
					<select id="selectBoxValue"  title="cashReceiptRequestWay" >
						<c:forEach var="requestWay" items="${cashReceiptRequestWay }">
							<option value="${requestWay.wayCode }">${requestWay.wayType }</option>
						</c:forEach>
					</select>
					<div id="inputSelect1"></div>
				</div>
				
			</div>
			
			<div id="N" style="display: none">
				
			</div>
			<br>주문자동의 : <input id="allAgreement1" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement1" type="checkbox" id="agreement1">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement1" type="checkbox" id="agreement1">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement1" type="checkbox" id="agreement1">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
	</div>
		
	<div id="3" style="display: none">
		휴대폰 결제안내 : 휴대폰 결제는 통신사에 따라 결제 한도 금액이 다릅니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		휴대폰 결제의 경우 가입하신 이동통신사에서 증빙을 발급 받을 수 있습니다.<br>
		<br>주문자동의 : <input id="allAgreement2" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement2" type="checkbox" id="agreement2">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement2" type="checkbox" id="agreement2">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement2" type="checkbox" id="agreement2">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
	</div>
		<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/>
				</p>
	</fieldset>
	</f:form>

