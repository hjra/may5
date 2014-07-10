<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
				document.getElementById("ac").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = "none"; // 숨김
				document.getElementById("cc").style.display = ""; // 보여줌
			} else if (v == "2") {
				document.getElementById("cc").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = "none"; // 숨김
				document.getElementById("ac").style.display = ""; // 보여줌
			} else {
				document.getElementById("cc").style.display = "none"; // 숨김
				document.getElementById("ac").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff2(v2, id) {
			if (v2 == "1") {
				document.getElementById("corcard").style.display = "none"; // 숨김
				document.getElementById("percard").style.display = ""; // 보여줌
			} else {
				document.getElementById("percard").style.display = "none"; // 숨김
				document.getElementById("corcard").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff3(v3, id) {
			if (v3 == "1") {
				document.getElementById("cry").style.display = "none"; // 숨김
				document.getElementById("crn").style.display = ""; // 보여줌
			} else {
				document.getElementById("crn").style.display = "none"; // 숨김
				document.getElementById("cry").style.display = ""; // 보여줌
			}
		}
		
		function div_OnOff4(v4, id) {
			if (v4 == "1") {
				document.getElementById("busi").style.display = "none"; // 숨김
				document.getElementById("pers").style.display = ""; // 보여줌
			} else {
				document.getElementById("pers").style.display = "none"; // 숨김
				document.getElementById("busi").style.display = ""; // 보여줌
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
	<input type="radio" name="paykind" value="1" checked="checked"
		onclick="div_OnOff(this.value,'cc');"> 신용카드
	<input type="radio" name="paykind" value="2"
		onclick="div_OnOff(this.value,'ac');"> 계좌이체
	<input type="radio" name="paykind" value="3"
		onclick="div_OnOff(this.value,'cp');"> 휴대폰 소액결제

	<div id="cc" style="display: block">
		카드구분 : 
		<input type="radio" name="cardsection" value="1"
			checked="checked" onclick="div_OnOff2(this.value,'percard');">개인카드
		<input type="radio" name="cardsection" value="2"
			onclick="div_OnOff2(this.value,'corcard');">법인카드
		
		<div id="percard" style="display: block">카드종류 : 
			<select id="selectBox"  title="" >
  								<option value="">KB카드</option>
  								<option value="">BC카드</option>
  								<option value="">신한카드</option>
  								<option value="">현대카드</option>
  								<option value="">삼성카드</option>
  								<option value="">롯데카드</option>
  								<option value="">외환카드</option>
  								<option value="">NH카드</option>
  								<option value="">우리카드</option>
  								<option value="">수협카드</option>
  								<option value="">광주카드</option>
  								<option value="">제주카드</option>
  								<option value="">전북카드</option>
  								<option value="">저축은행</option>
  								<option value="">우체국체크</option>
  								<option value="">KDB산업은행</option>
  								<option value="">신협</option>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox"  title="" >
  								<option value="">일시불</option>
  								<option value="">1개월</option>
  								<option value="">2개월</option>
  								<option value="">3개월</option>
 			</select>
 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
		
		<div id="corcard" style="display: none">카드종류 : 
			<select id="selectBox"  title="" >
  								<option value="">KB카드</option>
  								<option value="">BC카드</option>
  								<option value="">신한카드</option>
  								<option value="">현대카드</option>
  								<option value="">삼성카드</option>
  								<option value="">롯데카드</option>
  								<option value="">외환카드</option>
  								<option value="">NH카드</option>
  								<option value="">우리카드</option>
  								<option value="">수협카드</option>
  								<option value="">광주카드</option>
  								<option value="">제주카드</option>
  								<option value="">전북카드</option>
  								<option value="">저축은행</option>
  								<option value="">우체국체크</option>
  								<option value="">KDB산업은행</option>
  								<option value="">신협</option>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox"  title="" >
  								<option value="">일시불</option>
  								<option value="">1개월</option>
  								<option value="">2개월</option>
  								<option value="">3개월</option>
 			</select>

 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
	</div>
	<div id="ac" style="display: none">
		
		현금영수증 :
		<input type="radio" name="cashreceipt" value="1"
			checked="checked" onclick="div_OnOff3(this.value,'crn');">신청안함
		<input type="radio" name="cashreceipt" value="2"
			onclick="div_OnOff3(this.value,'cry');">신청하기	
		
			
			<div id="crn" style="display: block">
				<input type="checkbox" id="agreement" name="crsave">현재 현금영수증 신청정보를 저장합니다.
			</div>
		
			<div id="cry" style="display: none">
				공제용도 : 
				<input type="radio" name="deduction" value="1"
				checked="checked" onclick="div_OnOff4(this.value,'pers');">개인소득공제용
				<input type="radio" name="deduction" value="2"
				onclick="div_OnOff4(this.value,'busi');">사업자증빙용
				
				<div id="pers" style="display: block">신청수단 : 
					<select id="selectBoxValue"  title="" >
						<option value="0" >휴대폰번호</option>
						<option value="1" >현금영수증카드번호</option>
						<option value="2" >주민등록번호</option>
					</select>
					<div id="inputSelect"></div>
				</div>
				<div id="busi" style="display: none" >신청수단 : 
					<select id="selectBoxValue1" title="">
						<option value="0">휴대폰번호</option>
						<option value="1" >현금영수증카드번호</option>
						<option value="2">사업자등록번호</option>
					</select>
					<div id="inputSelect1"></div>
				</div>
				<input type="checkbox" id="agreement" name="crsave">현재 현금영수증 신청정보를 저장합니다.
				<br>주문자동의 : <input id="allAgreement1" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement1" type="checkbox" id="agreement1">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement1" type="checkbox" id="agreement1">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement1" type="checkbox" id="agreement1">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
			</div>
	</div>
	<div id="cp" style="display: none">
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

